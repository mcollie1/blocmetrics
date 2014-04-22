class ChangeDataTypeForEventsColumn < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.change :app_user, :integer
    end
  end
end
