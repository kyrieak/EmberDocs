class CreateTagwords < ActiveRecord::Migration
  def change
    create_table :tagwords do |t|
      t.string :word

      t.timestamps
    end
  end
end
