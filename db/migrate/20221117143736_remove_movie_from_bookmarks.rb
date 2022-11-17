class RemoveMovieFromBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :movie
  end
end
