class CreatePhilosophers < ActiveRecord::Migration[5.1]
  def change
    create_table :philosophers do |t|
      t.string :name

      t.timestamps
    end
  end
end
