class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :my_string
      t.text :my_numeric

      t.timestamps
    end
  end
end
