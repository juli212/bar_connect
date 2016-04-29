class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :user, null: false
      t.references :event, null: false

      t.timestamps null: false
    end
  end
end
