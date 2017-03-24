class AddColumnOnInfos < ActiveRecord::Migration[5.0]
  def change
  	add_column :infos, :user_id, :integer
  	add_column :infos, :host, :string
  	add_index :infos, :user_id
  end
end
