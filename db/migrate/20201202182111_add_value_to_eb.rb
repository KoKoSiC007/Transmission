class AddValueToEb < ActiveRecord::Migration[6.0]
  def change
    add_column :ebs, :value, :float, null: false
  end
end
