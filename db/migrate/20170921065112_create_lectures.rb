class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
    	t.integer :like
      t.timestamps
    end
  end
end
