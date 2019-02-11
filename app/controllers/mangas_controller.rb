class MangasController < ApplicationController
  def index
    @mangas = if search_word.present?
                Manga.es_search(search_word).page(params[:page] || 1).per(5).records
              else
                Manga.page(params[:page] || 1).per(5)
              end
  end

  private

    def search_word
      @search_word ||= params[:search_word]
    end
end
