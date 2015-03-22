require "test_helper"

describe ItemsController do
  describe "Get :index" do
    before do
      get :index
    end
    
    it "renders items/index" do
      must_render_template "items/index"
    end

    it "responds with success" do
      must_respond_with :success
    end
  end
end
