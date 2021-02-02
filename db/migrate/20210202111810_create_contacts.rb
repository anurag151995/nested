class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :user_id
      t.string :pet_id
      t.timestamps
    end
  end
end
