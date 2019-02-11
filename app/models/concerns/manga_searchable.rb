module MangaSearchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model

    # index名
    index_name "es_manga_#{Rails.env}"

    # マッピング情報
    settings do
      mappings dynamic: 'false' do
        indexes :id,                   type: 'integer'
        indexes :publisher,            type: 'keyword'
        indexes :author,               type: 'keyword'
        indexes :category,             type: 'text', analyzer: 'kuromoji'
        indexes :title,                type: 'text', analyzer: 'kuromoji'
        indexes :description,          type: 'text', analyzer: 'kuromoji'
      end
    end

    def as_indexed_json(*)
      attributes
        .symbolize_keys
        .slice(:id, :title, :description)
        .merge(publisher: publisher_name, author: author_name, category: category_name)
    end
  end

  def publisher_name
    publisher.name
  end

  def author_name
    author.name
  end

  def category_name
    category.name
  end

  class_methods do
    def create_index!
      client = __elasticsearch__.client
      # すでにindexを作成済みの場合は削除する
      client.indices.delete index: self.index_name rescue nil
      client.indices.create(index: self.index_name,
                            body: {
                                settings: self.settings.to_hash,
                                mappings: self.mappings.to_hash
                            })
    end

    def es_search(query)
      __elasticsearch__.search({
        query: {
          multi_match: {
            fields: %w(id publisher author category title description),
            type: 'cross_fields',
            query: query,
            operator: 'and'
          }
        }
      })
    end
  end
end
