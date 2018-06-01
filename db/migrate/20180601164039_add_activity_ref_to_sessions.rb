class AddActivityRefToSessions < ActiveRecord::Migration[5.1]
  def change
    add_reference :sessions, :activity, foreign_key: true
  end
end
