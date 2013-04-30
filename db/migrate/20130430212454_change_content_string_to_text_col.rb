class ChangeContentStringToTextCol < ActiveRecord::Migration
  def up
    remove_column :docs, :content
    add_column :docs, :content, :text
  end

  def down
    remove_column :docs, :content
    add_column :docs, :content, :string
  end
end
