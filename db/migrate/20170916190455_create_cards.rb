class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :snippet
      t.string :content
      t.timestamps
    end
  end
end
