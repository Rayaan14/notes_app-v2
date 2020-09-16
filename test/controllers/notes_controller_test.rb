require 'test_helper'


class NotesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Noten | Your Online Notebook"
  end
  
  test "index action should succeed" do
    get notes_url
    assert_response :success
    # assert_select "title", @base_title
  end
  
  test "new action should succeed" do
    get notes_new_url
    assert_response :success
    # assert_select "title", @base_title
  end
  
  test "should show post" do
    note = notes(:hello_world)
    get notes_url, params: {id: note.id}
    assert_response :success
  end
  
  test "created at should be displayed" do
    note = notes(:hello_world)
    created_at = time_ago_in_words(note.created_at)
    assert_not_nil created_at
  end
  
end
