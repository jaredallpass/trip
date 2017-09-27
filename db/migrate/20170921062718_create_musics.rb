class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
    	t.string :name
    	t.integer :like
    t.references :music_category, foreign_key: true
      t.timestamps
    end
  end
end
