class Manga < ApplicationRecord
  include MangaSearchable

  belongs_to :author
  belongs_to :publisher
  belongs_to :category
end
