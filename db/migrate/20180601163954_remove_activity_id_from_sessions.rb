class RemoveActivityIdFromSessions < ActiveRecord::Migration[5.1]
  def change
    remove_column :sessions, :activity_id, :integer
  end
end
