class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
    	t.string :name
    	t.integer :like
	t.references :image_category, foreign_key: true
      t.timestamps
    end
  end
end
