class ChangeDataTypeForEventsColumn < ActiveRecord::Migration
  def change
    change_column :events, :app_user, 'integer USING CAST(app_user AS integer)'
  end 
end
