class ChangeDataTypeForParametersColumn < ActiveRecord::Migration
  def change
    change_table :parameters do |t|
      t.change :name, :string
    end
  end
end
