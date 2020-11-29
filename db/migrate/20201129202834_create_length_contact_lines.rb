class CreateLengthContactLines < ActiveRecord::Migration[6.0]
  def change
    create_table :length_contact_lines do |t|
      t.float :value, null: false

      t.timestamps
    end
  end
end
