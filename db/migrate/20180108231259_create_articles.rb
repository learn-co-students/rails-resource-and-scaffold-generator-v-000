class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :tit

      t.timestamps null: false
    end
  end
end
