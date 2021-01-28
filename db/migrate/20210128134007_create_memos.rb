class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.text :detail
      t.string :priority

      t.timestamps
    end
  end
end
