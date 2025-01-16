class RemoveUniqueBookmarkIndex < ActiveRecord::Migration[7.1]
  def change
    remove_index :bookmarks, column: [:movie_id, :list_id]
  end
end
