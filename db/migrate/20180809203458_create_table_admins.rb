class CreateTableAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :table_admins do |t|
      t.string :user
      t.string :password
    end
  end
end
