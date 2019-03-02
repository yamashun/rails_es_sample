require 'rails_helper'

RSpec.describe MangaSearchable, elasticsearch: true do

  describe '.es_search' do
    describe '検索ワードにマッチする漫画の検索' do
      let!(:manga_1) do
        create(:manga, title: 'キングダム', description: '時は紀元前―。いまだ一度も統一...')
      end
      let!(:manga_2) do
        create(:manga, title: '僕のヒーローアカデミア', description: '多くの人間が“個性という力を持つ...')
      end
      let!(:manga_3) do
        create(:manga, title: 'はたらく細胞', description: '人間1人あたりの細胞の数、およそ60兆個...')
      end

      before :each do
        Manga.__elasticsearch__.import(refresh: true)
      end

      def search_manga_ids
        Manga.es_search(query).records.pluck(:id)
      end

      context '検索ワードがタイトルにマッチする場合' do
        let(:query) { 'キングダム' }

        it '検索ワードにマッチする漫画を取得する' do
          expect(search_manga_ids).to eq [manga_1.id]
        end
      end

      context '検索ワードが本文にマッチする場合' do
        let(:query) { '60兆個' }

        it '検索ワードにマッチする漫画を取得する' do
          expect(search_manga_ids).to eq [manga_3.id]
        end
      end

      context '検索ワードが複数ある場合' do
        let(:query) { '人間 個性' }

        it '両方の検索ワードにマッチする漫画を取得する' do
          expect(search_manga_ids).to eq [manga_2.id]
        end
      end
    end
  end
end
