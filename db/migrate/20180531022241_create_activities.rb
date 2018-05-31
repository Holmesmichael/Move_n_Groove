class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.text :activity
      t.integer :duration
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
