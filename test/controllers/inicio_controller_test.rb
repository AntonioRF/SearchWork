require 'test_helper'

class InicioControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get vacante" do
    get :vacante
    assert_response :success
  end

end
