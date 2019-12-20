class AlterUsers < ActiveRecord::Migration[6.0]
  def change
    add_column("admin_users", "first_name", :string, :limit => 25)
    add_column("admin_users", "last_name", :string, :limit => 50)
    add_column("admin_users", "username", :string, :limit => 25)
    add_column("admin_users", "email", :string, :limit => 100)
    add_column("admin_users", "hashed_password", :string, :limit => 40)
    add_index("admin_users", "username")
  end
end
