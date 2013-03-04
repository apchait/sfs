require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  setup do
    @word = words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word" do
    assert_difference('Word.count') do
      post :create, word: { audio: @word.audio, description: @word.description, image: @word.image, language_id: @word.language_id, pdf: @word.pdf, subtheme_id: @word.subtheme_id, text: @word.text, text_image: @word.text_image }
    end

    assert_redirected_to word_path(assigns(:word))
  end

  test "should show word" do
    get :show, id: @word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word
    assert_response :success
  end

  test "should update word" do
    put :update, id: @word, word: { audio: @word.audio, description: @word.description, image: @word.image, language_id: @word.language_id, pdf: @word.pdf, subtheme_id: @word.subtheme_id, text: @word.text, text_image: @word.text_image }
    assert_redirected_to word_path(assigns(:word))
  end

  test "should destroy word" do
    assert_difference('Word.count', -1) do
      delete :destroy, id: @word
    end

    assert_redirected_to words_path
  end
end
