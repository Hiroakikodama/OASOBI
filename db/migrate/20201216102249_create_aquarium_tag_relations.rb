class CreateAquariumTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :aquarium_tag_relations do |t|
      t.references :aquarium, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
