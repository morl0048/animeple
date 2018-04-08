class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :type
      t.string :url
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
