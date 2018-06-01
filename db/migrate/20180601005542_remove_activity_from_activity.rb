class RemoveActivityFromActivity < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :activity, :string
  end
end
