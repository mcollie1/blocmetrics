class AddApplicationToEvents < ActiveRecord::Migration
  def change
    add_column :events, :application, :string
    add_index :events, :application
  end
end
