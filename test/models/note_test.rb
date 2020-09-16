require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  
  test "should not save note without title" do
    note = Note.new
    assert_not note.save, "Saved the note without a title"
  end
  
  test "should not save note without content" do
    note = Note.new
    assert_not note.save, "Saved the note without a content"
  end
  
end
