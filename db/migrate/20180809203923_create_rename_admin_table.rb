class CreateRenameAdminTable < ActiveRecord::Migration[5.2]
   def change
    rename_table :table_admins, :admins
  end 
end
