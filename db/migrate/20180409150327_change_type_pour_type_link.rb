class ChangeTypePourTypeLink < ActiveRecord::Migration[5.1]
  def change
    rename_column :links, :type, :typeLink
  end
end
