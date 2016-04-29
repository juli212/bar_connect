class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.text :comments
      t.date :time, null: false
      t.date :deadline, null: false
      t.integer :minimum, null: false
      t.integer :maximum, null: false
      t.references :user, null: false
      # t.references :game, null: false

      t.timestamps null: false
    end
  end
end
