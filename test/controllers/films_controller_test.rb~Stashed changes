require 'test_helper'

class FilmsControllerTest < ActionDispatch::IntegrationTest
  test 'root goes to films index' do
    assert_recognizes({ controller: 'films', action: 'index' }, '/')
  end

  test '/films goes to films index' do
    assert_routing({ path: '/films', method: :get }, controller: 'films', action: 'index')
  end
end
