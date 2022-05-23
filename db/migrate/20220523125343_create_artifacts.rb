class CreateArtifacts < ActiveRecord::Migration[7.0]
  def change
    create_table :artifacts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
