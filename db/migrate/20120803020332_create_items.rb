class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :collection_id, :nil => false
      10.times do |i|
        t.text "field_#{i}"
      end
      t.integer :num_fields, :nil => false
      t.timestamps
    end
  end
end
