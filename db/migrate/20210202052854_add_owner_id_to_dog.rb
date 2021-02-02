class AddOwnerIdToDog < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :owner_id, :string
  end
end
