class RemoveListFromBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :list
  end
end
