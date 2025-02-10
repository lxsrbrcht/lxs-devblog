class ChangeBodytoJson < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :body, :string
    add_column :posts, :content, :json
  end
end
