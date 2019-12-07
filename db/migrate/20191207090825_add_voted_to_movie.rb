class AddVotedToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :voted, :integer, default: 0
  end
end
