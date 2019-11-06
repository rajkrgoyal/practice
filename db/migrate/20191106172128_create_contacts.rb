class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email, unique: true
      t.string :phone

      t.timestamps
    end
  end
end
