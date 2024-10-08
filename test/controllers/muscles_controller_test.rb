require "test_helper"

class MusclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @muscle = muscles(:one)
  end

  test "should get index" do
    get muscles_url
    assert_response :success
  end

  test "should get new" do
    get new_muscle_url
    assert_response :success
  end

  test "should create muscle" do
    assert_difference("Muscle.count") do
      post muscles_url, params: { muscle: { blood_supply: @muscle.blood_supply, concentric: @muscle.concentric, eccentric: @muscle.eccentric, innervation: @muscle.innervation, insertion: @muscle.insertion, isometric: @muscle.isometric, origin: @muscle.origin } }
    end

    assert_redirected_to muscle_url(Muscle.last)
  end

  test "should show muscle" do
    get muscle_url(@muscle)
    assert_response :success
  end

  test "should get edit" do
    get edit_muscle_url(@muscle)
    assert_response :success
  end

  test "should update muscle" do
    patch muscle_url(@muscle), params: { muscle: { blood_supply: @muscle.blood_supply, concentric: @muscle.concentric, eccentric: @muscle.eccentric, innervation: @muscle.innervation, insertion: @muscle.insertion, isometric: @muscle.isometric, origin: @muscle.origin } }
    assert_redirected_to muscle_url(@muscle)
  end

  test "should destroy muscle" do
    assert_difference("Muscle.count", -1) do
      delete muscle_url(@muscle)
    end

    assert_redirected_to muscles_url
  end
end
