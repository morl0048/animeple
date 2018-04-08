class AddImgToAnimes < ActiveRecord::Migration[5.1]
  def change
    add_column :animes, :img, :string
  end
end
