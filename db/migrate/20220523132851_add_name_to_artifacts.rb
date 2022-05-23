class AddNameToArtifacts < ActiveRecord::Migration[7.0]
  def change
    add_column :artifacts, :name, :string
  end
end
