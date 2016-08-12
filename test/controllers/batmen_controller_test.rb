require 'test_helper'

class BatmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batman = batmen(:one)
  end

  test "should get index" do
    get batmen_url
    assert_response :success
  end

  test "should get new" do
    get new_batman_url
    assert_response :success
  end

  test "should create batman" do
    assert_difference('Batman.count') do
      post batmen_url, params: { batman: { allies: @batman.allies, backstory: @batman.backstory, enemies: @batman.enemies, name: @batman.name, nemesis: @batman.nemesis } }
    end

    assert_redirected_to batman_url(Batman.last)
  end

  test "should show batman" do
    get batman_url(@batman)
    assert_response :success
  end

  test "should get edit" do
    get edit_batman_url(@batman)
    assert_response :success
  end

  test "should update batman" do
    patch batman_url(@batman), params: { batman: { allies: @batman.allies, backstory: @batman.backstory, enemies: @batman.enemies, name: @batman.name, nemesis: @batman.nemesis } }
    assert_redirected_to batman_url(@batman)
  end

  test "should destroy batman" do
    assert_difference('Batman.count', -1) do
      delete batman_url(@batman)
    end

    assert_redirected_to batmen_url
  end
end
