class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :course, foreign_key: true
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
