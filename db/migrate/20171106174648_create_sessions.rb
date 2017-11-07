class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.references :who, foreignkey: {to_table: :users}
      t.string :session_id
    end
  end
end
