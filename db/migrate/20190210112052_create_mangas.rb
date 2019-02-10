class CreateMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :mangas do |t|
      t.references :author, foreign_key: true
      t.references :publisher, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
