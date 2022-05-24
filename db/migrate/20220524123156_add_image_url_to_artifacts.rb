class AddImageUrlToArtifacts < ActiveRecord::Migration[7.0]
  def change
    add_column :artifacts, :img_url, :string
  end
end
