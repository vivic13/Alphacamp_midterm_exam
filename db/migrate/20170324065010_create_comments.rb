class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.string :commenter
    	t.text :body
    	t.integer :info_id
      t.timestamps
    end
    add_index :comments, :info_id
  end
end
