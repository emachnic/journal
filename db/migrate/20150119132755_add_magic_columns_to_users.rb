class AddMagicColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_login_ip, :string
    add_column :users, :last_login_ip, :string
    add_column :users, :failed_login_count, :integer
  end
end
