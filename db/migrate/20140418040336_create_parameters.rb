class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :topic_name
      t.string :post_name
      t.integer :name
      t.references :event, index: true

      t.timestamps
    end
  end
end
