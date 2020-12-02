class RemoveModulusRef < ActiveRecord::Migration[6.0]
  def change
    remove_column :ebs, :modulus_id
    add_column :ebs, :modulus, :float, null: false, default: 0
  end
end
