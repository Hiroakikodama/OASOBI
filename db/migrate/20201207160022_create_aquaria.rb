class CreateAquaria < ActiveRecord::Migration[5.2]
  def change
    create_table :aquaria do |t|
      t.string :name, null: false, index: true
      t.text :body, null: false
      t.text :address
      t.text :official

      t.timestamps
    end
  end
end
