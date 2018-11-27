class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :exerpt
      t.text :description
      t.integer :upvotes

      t.timestamps
    end
  end
end
