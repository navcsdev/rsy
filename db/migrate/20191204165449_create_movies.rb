class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :link
      t.string :uid
      t.string :title
      t.string :desc
      t.integer :likes
      t.integer :dislikes
      t.belongs_to :sharers

      t.timestamps
    end
  end
end
