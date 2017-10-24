class CreateWordPornstars < ActiveRecord::Migration[5.1]
  def change
    create_table :word_pornstars, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title,      null: false
      t.text :description
      t.references :word_porn,   type: :uuid, index: true, foreign_key: true

      t.timestamps
    end
  end
end
