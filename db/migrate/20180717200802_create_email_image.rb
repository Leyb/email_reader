class CreateEmailImage < ActiveRecord::Migration[5.1]
  def change
    create_table :email_images do |t|
      t.string :image_link # maybe the img should be downloaded into our server and keep the new image name/ location
      t.string :obj_type
      t.string :obj_id

      t.timestamps
    end
  end
end
