class CreateWorkspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :monday
      t.string :mondaytime
      t.string :tuesday
      t.string :tuesdaytime
      t.string :wednesday
      t.string :wednesdaytime
      t.string :thursday
      t.string :thursdaytime
      t.string :friday
      t.string :fridaytime
      t.string :saturday
      t.string :saturdaytime
      t.string :sunday
      t.string :sundaytime
      t.string :homepage
      t.string :outlet
      t.string :wifi
      t.string :interview
      t.string :conversation
      t.string :smoking
      t.timestamps
    end
  end
end
