class RemoveUserIdFromActivity < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :user_id, :integer
  end
end
