class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :display
      t.string :login

      t.timestamps
    end
  end
end
