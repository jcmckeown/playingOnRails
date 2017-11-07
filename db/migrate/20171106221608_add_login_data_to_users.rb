class AddLoginDataToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pubkey_mod, :integer
    add_column :users, :pubkey_exp, :integer
    add_column :users, :hidnprivkey, :integer
  end
end
