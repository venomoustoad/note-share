class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.string :source
      t.float :stat_rating
      t.integer :stat_views
      t.integer :user_id
      t.string :category_subject
      t.string :category_grade
      t.string :category_board

      t.timestamps
    end
  end
end
