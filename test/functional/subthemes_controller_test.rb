require 'test_helper'

class SubthemesControllerTest < ActionController::TestCase
  setup do
    @subtheme = subthemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subthemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtheme" do
    assert_difference('Subtheme.count') do
      post :create, subtheme: { description: @subtheme.description, image: @subtheme.image, name: @subtheme.name, theme_id: @subtheme.theme_id, video_url: @subtheme.video_url }
    end

    assert_redirected_to subtheme_path(assigns(:subtheme))
  end

  test "should show subtheme" do
    get :show, id: @subtheme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subtheme
    assert_response :success
  end

  test "should update subtheme" do
    put :update, id: @subtheme, subtheme: { description: @subtheme.description, image: @subtheme.image, name: @subtheme.name, theme_id: @subtheme.theme_id, video_url: @subtheme.video_url }
    assert_redirected_to subtheme_path(assigns(:subtheme))
  end

  test "should destroy subtheme" do
    assert_difference('Subtheme.count', -1) do
      delete :destroy, id: @subtheme
    end

    assert_redirected_to subthemes_path
  end
end
