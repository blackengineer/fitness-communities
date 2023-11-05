require "application_system_test_case"

class MusclesTest < ApplicationSystemTestCase
  setup do
    @muscle = muscles(:one)
  end

  test "visiting the index" do
    visit muscles_url
    assert_selector "h1", text: "Muscles"
  end

  test "should create muscle" do
    visit muscles_url
    click_on "New muscle"

    fill_in "Blood supply", with: @muscle.blood_supply
    fill_in "Concentric", with: @muscle.concentric
    fill_in "Eccentric", with: @muscle.eccentric
    fill_in "Innervation", with: @muscle.innervation
    fill_in "Insertion", with: @muscle.insertion
    fill_in "Isometric", with: @muscle.isometric
    fill_in "Origin", with: @muscle.origin
    click_on "Create Muscle"

    assert_text "Muscle was successfully created"
    click_on "Back"
  end

  test "should update Muscle" do
    visit muscle_url(@muscle)
    click_on "Edit this muscle", match: :first

    fill_in "Blood supply", with: @muscle.blood_supply
    fill_in "Concentric", with: @muscle.concentric
    fill_in "Eccentric", with: @muscle.eccentric
    fill_in "Innervation", with: @muscle.innervation
    fill_in "Insertion", with: @muscle.insertion
    fill_in "Isometric", with: @muscle.isometric
    fill_in "Origin", with: @muscle.origin
    click_on "Update Muscle"

    assert_text "Muscle was successfully updated"
    click_on "Back"
  end

  test "should destroy Muscle" do
    visit muscle_url(@muscle)
    click_on "Destroy this muscle", match: :first

    assert_text "Muscle was successfully destroyed"
  end
end
