class AddAppOwnerToEvents < ActiveRecord::Migration
  def change
    add_column :events, :app_owner, :string
    add_index :events, :app_owner
  end
end
