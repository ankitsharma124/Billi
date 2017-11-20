class CreateMUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :m_user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :mailid
      t.string :dob
      t.string :mob      
      t.timestamps null: false
      t.string :created_by      
      t.string :updated_by
      t.boolean :del_flag, :default => false
    end
  end
end
