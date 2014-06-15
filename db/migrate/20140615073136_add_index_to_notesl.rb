class AddIndexToNotesl < ActiveRecord::Migration
  def change
    add_index :notes, [:user_id, :created_at]
  end
end
