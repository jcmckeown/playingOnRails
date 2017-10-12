class CreateWebRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :web_requests do |t|
      t.string :requrl
      t.string :reqsrc
      t.string :reqverb
      t.string :reqclient

      t.timestamps
    end
  end
end
