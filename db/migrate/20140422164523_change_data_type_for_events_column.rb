class ChangeDataTypeForEventsColumn < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.change :app_user, :integer
    end

    change_column :events, :app_user, 'integer USING CAST(app_user AS integer)'
  end
  
end
