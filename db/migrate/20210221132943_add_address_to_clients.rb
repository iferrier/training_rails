class AddAddressToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :address, :string
  end
end
