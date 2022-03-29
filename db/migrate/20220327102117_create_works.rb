class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title, null:false
      t.string :category
      t.text   :description
      t.text   :movie_link, null:false, unique: true

      t.timestamps
    end
  end
end
