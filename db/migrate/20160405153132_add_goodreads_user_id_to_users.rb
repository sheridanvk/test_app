class AddGoodreadsUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :goodreads_user_id, :integer
  end
end
