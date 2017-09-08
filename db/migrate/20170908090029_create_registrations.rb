class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :user
      t.references :event
      t.boolean :status
      t.decimal :price
      t.integer :guest_count

      t.timestamps
    end
  end
end
