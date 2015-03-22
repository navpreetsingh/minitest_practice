require "test_helper"

feature "ToDoList" do
  scenario "display a list to-do items" do
    visit root_path
    page.must_have_css("#items")
    within("#items") do
    	Item.find_each do |item|
    		selector = "#item-#{ item.id }"
    		page.must_have_css(selector)
    		within(selector) do
    			page.must_have_content item.name
    			page.must_have_content item.description
    		end
    	end    
  	end
  end
end
