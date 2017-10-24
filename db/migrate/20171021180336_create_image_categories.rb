class CreateImageCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :image_categories, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title,      null: false
      t.text :description
      t.references :image,   type: :uuid, index: true, foreign_key: true
      t.timestamps
    end
  end
end
