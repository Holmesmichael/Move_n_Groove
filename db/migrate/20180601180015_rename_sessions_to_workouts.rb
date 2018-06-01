class RenameSessionsToWorkouts < ActiveRecord::Migration[5.1]
  def change
    rename_table :sessions, :workouts
  end
end
