class MangasController < ApplicationController
  def index
    @mangas = Manga.all
  end
end
