class CreateAres < ActiveRecord::Migration
  def change
    create_table :ares do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
