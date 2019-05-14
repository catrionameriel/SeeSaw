require 'test_helper'

class FilmsControllerTest < ActionDispatch::IntegrationTest
  test 'root goes to films index' do
    get '/'
    assert_select 'films#index'
  end
end
