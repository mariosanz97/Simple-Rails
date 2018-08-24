class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.integer :id_gallery
      t.string :title
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
