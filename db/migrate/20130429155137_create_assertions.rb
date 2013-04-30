class CreateAssertions < ActiveRecord::Migration
  def change
    create_table :assertions do |t|
      t.integer :member_id
      t.string :statement

      t.timestamps
    end
  end
end
