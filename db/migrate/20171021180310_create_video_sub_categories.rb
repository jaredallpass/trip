class CreateVideoSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :video_sub_categories, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title,      null: false
      t.text :description
      t.references :video_category,   type: :uuid, index: true, foreign_key: true
      t.timestamps
    end
  end
end
