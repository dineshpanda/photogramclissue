class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :photo_id
      t.integer :blah

      t.timestamps
    end
  end
end
