class MigrationRemoveImgFromSeason < ActiveRecord::Migration[5.1]
  def change
    remove_column :seasons, :img
  end
end
