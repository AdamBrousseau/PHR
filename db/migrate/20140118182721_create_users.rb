class CreateUsers < ActiveRecord::Migration
  def change
  
    create_table :users do |t|
	  
	  t.string :first_name
	  t.string :last_name
      t.string :email
	  t.string :password
      t.string :salt
      t.timestamp :last_login
      t.integer :login_attempts
      t.boolean :account_lock

	  t.references :patient_id
	  t.references :user_id
	  
      t.timestamps
    end
  end
end
