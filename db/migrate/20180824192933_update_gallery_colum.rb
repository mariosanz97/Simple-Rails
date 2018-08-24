class UpdateGalleryColum < ActiveRecord::Migration[5.2]
  def change
    remove_column :galleries, :id, :integer
  end
end
