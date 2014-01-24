class DropIdColumns < ActiveRecord::Migration
  def up
	remove_column :users, :patient_id_id
	remove_column :users, :user_id_id
  end
end
