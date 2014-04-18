class AddTopicNameToParameters < ActiveRecord::Migration
  def change
    add_column :parameters, :topic_name, :string
  end
end
