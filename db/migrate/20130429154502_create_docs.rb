class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :assertion_id
      t.string :subject
      t.string :content

      t.timestamps
    end
  end
end
