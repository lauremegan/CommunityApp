class CreateImage < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :upload
      t.string :title
      t.integer :user_id
      t.timestamps
    end
  end
end
