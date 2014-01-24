class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
	
	  t.string :first_name
	  t.string :last_name
	  t.date :dob
	  t.string :health_card
	  t.string :blood_type
	  t.string :gender
	  
	  t.timestamps
    end
  end
end
