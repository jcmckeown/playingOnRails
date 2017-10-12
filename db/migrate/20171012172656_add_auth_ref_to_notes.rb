class AddAuthRefToNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :note_auth, foreign_key: {to_table: :users}
  end
end
