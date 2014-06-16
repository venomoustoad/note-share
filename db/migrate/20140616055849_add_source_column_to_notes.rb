class AddSourceColumnToNotes < ActiveRecord::Migration
  def self.up
    add_attachment :notes, :source
  end

  def self.down
    remove_attachment :notes, :source
  end
end
