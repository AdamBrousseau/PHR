class RefreshDb < ActiveRecord::Migration
  def change
	User.delete_all
  end
end
