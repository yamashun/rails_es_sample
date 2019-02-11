class MangasController < ApplicationController
  def index
    @mangas = if search_word.present?
                Manga.es_search(search_word).records
              else
                Manga.all
              end
  end

  private

    def search_word
      @search_word ||= params[:search_word]
    end
end
