class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.integer :job_id
      t.integer :user_id
      t.integer :bid

      t.timestamps
    end
  end
end
