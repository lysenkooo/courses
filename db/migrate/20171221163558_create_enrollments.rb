class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.integer :step
      t.date :finished_at

      t.timestamps
    end
  end
end
