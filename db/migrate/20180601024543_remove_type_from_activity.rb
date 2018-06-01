class RemoveTypeFromActivity < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :type, :string
  end
end
