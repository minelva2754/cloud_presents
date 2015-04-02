class CreateMatchRequests < ActiveRecord::Migration
  def change
    create_table :match_requests do |t|
      t.integer :request_user_id
      t.integer :target_user_id

      t.timestamps null: false
    end
  end
end
