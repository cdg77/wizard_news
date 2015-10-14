class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :author, :string
      t.column :body, :string
      t.column :link_id, :integer

      t.timestamps
    end
  end
end
