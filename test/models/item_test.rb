require "test_helper"

describe Item do
  # let(:item) { Item.new(name: "Write Minitest-BDD post", 
  # 						description: "Show Rails and Capybara example") }

	before do
		@item = Item.create(name: "Write Minitest-BDD post",
                     description: "Show Rails and Capybara example")
  end	

  it "must be valid" do
    @item.must_be :valid?
  end

  it "has a name attribute" do
  	@item.must_respond_to :name
  end

  it "has a description attribute" do
  	@item.must_respond_to :description
  end
end
