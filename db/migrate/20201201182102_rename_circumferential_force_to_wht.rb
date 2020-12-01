class RenameCircumferentialForceToWht < ActiveRecord::Migration[6.0]
  def change
    rename_table :circumferential_forces, :whts
  end
end
