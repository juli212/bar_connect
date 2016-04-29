class CreateUserEvents < ActiveRecord::Migration
  def change
    create_table :user_events do |t|
      t.references :user, null: false
      t.references :event, null: false

      t.timestamps null: false
    end
  end
end
