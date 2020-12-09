class AddImageIdToAquaria < ActiveRecord::Migration[5.2]
  def change
    add_column :aquaria, :image_id, :string
  end
end
