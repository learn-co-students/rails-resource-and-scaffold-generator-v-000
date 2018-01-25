class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.stirng :title
      t.text :body

      t.timestamps null: false
    end
  end
end
