class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :title, null: false
      t.integer :release_date, null: false
      t.boolean :active, default: false
      t.text :theme
      t.string :image
      t.string :audio
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
