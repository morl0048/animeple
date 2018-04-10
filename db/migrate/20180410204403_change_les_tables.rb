class ChangeLesTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :seasons
    drop_table :episodes

    create_table :episodes do |t|
      t.string :name
      t.references :anime, foreign_key: true

      t.timestamps
    end
  end
end
