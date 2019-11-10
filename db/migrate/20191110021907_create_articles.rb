class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :text
      t.string :image
      t.timestamps
    end
  end
end
