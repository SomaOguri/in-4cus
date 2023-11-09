class AddCategoryToWorkspaces < ActiveRecord::Migration[7.0]
  def change
    add_column :workspaces, :category, :string
  end
end
