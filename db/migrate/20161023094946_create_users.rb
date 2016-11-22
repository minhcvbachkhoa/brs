class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :admin, default: false
      t.string :image
      t.integer :new_notification

      t.timestamps
    end
  end
end
