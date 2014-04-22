class AddAppUserToEvents < ActiveRecord::Migration
  def change
    add_column :events, :app_user, :string
    add_index :events, :app_user
  end
end
