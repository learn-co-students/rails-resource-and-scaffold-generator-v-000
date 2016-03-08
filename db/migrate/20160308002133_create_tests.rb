class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :one
      t.integer :two

      t.timestamps null: false
    end
  end
end
