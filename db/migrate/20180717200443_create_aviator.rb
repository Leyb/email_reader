class CreateAviator < ActiveRecord::Migration[5.1]
  def change
    create_table :aviators do |t|
      t.string :body, null: false
      t.string :texts, null: false
      t.timestamps

    end
  end
end
