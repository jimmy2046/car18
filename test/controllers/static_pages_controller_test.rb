require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Car18"
  end
    
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"      
  end
            
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
    
end
