class AddTopicNameToEvents < ActiveRecord::Migration
  def change
    add_column :events, :topic_name, :string
  end
end
