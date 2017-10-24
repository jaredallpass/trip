class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title,      null: false
      t.text :description

      t.timestamps
    end
  end
end
