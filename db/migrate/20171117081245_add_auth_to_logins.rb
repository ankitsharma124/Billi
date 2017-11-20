class AddAuthToLogins < ActiveRecord::Migration[5.1]
  def change
    add_column :logins, :auth_tokan, :string
    add_index :logins, :auth_tokan
  end
end
