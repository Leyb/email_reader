class CreateAviator < ActiveRecord::Migration[5.1]
  def change
    create_table :aviators do |t|
      t.string :content, null: false
      t.timestamps

    end
  end
end
