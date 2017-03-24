class AddColumnOnInfo < ActiveRecord::Migration[5.0]
  def change
  	add_column :infos, :category_id, :integer
  	add_index :infos, :category_id
  end
end
