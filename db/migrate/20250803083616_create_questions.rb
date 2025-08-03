class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.integer :category_id, null: true
      t.date :deadline, null: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
