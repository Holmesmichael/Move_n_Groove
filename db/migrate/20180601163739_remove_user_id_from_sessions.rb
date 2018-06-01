class RemoveUserIdFromSessions < ActiveRecord::Migration[5.1]
  def change
    remove_column :sessions, :user_id, :integer
  end
end
