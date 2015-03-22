require "test_helper"

feature "ToDoList" do
  scenario "display a list to-do items" do
    visit root_path
    page.must_have_css(".items")
    # page.must_have_content "Hello World"
    # page.wont_have_content "Goobye All!"

  end
end
