class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :referral_code
      t.integer :referrer_id

      t.string :vote_location, :limit => 250
      t.string :ip_address
      t.text   :user_agent

      t.string :state, limit: 20

      t.timestamps
    end
  end
end
