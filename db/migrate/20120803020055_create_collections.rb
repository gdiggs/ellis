class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :user_id, :nil => false
      t.text :title, :nil => false
      t.text :description
      t.timestamps
    end
  end
end
