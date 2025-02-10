class AddProjectToPost < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :project, null: false, foreign_key: true
  end
end
