class SetDefaultsForPosts < ActiveRecord::Migration[5.0]
  def change
    change_column_null :posts, :title, false
    change_column_null :posts, :body, false
    change_column_default :posts, :published, from: true, to: false
  end
end
