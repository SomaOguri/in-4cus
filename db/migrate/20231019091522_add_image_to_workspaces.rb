class AddImageToWorkspaces < ActiveRecord::Migration[7.0]
  def change
    add_column :workspaces, :image, :string
  end
end
