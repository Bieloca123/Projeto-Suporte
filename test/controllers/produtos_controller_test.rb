require 'test_helper'

class ProdutosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get produtos_index_url
    assert_response :success
  end

end
