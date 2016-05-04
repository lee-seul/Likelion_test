class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :post

      t.timestamps null: false
    end
  end
end
