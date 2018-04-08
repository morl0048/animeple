class AddImgToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :img, :string
  end
end
