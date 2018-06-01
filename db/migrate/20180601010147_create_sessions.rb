class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :duration
      t.string :notes
      t.integer :activity_id

      t.timestamps
    end
  end
end
