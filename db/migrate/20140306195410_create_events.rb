class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer  :user_id
      t.string :title
      t.string :location
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :max_attendees
      t.text :description
      

      t.timestamps
    end

    add_index :events, :user_id
  end
end
