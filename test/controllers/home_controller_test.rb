require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  def setup

    test_image = Rails.root.join('test', 'fixtures', 'files', 'test_photo.jpeg').to_s
    @file = Rack::Test::UploadedFile.new(test_image, "image/jpeg")


    @center_a = Center.create!(state_id: 111, state: "Estado Test A", municipality: "Municipio Test A", municipality_id: 111, parish_id: 111, name: "El Centro", direction: "La dirección")
    photo_a = Photo.create!(file: @file, center_id: @center_a.id)

    center_b = Center.create!(state_id: 222, state: "Estado Test B", municipality: "Municipio Test B", municipality_id: 222, parish_id: 222, name: "El Otro Centro", direction: "La Otra dirección")
    photo_b = Photo.create!(file: @file, center_id: center_b.id)

  end

  test "index" do
    get root_path
    assert_response :success
    assert_match 'Desenmascara la Prostituyente', @response.body

    assert_select ".card" do |elements|
      assert elements.count == 2
    end
    
  end

  test "search" do
    post index_path, params: { search_state_id: 111, search_municipality_id: 111 }
    assert_response :success

    assert_select ".card" do |elements|
      assert elements.count == 1
    end
  end

  test "create" do
    assert_difference('Photo.count') do
      post create_path, params: { state_id: 111, municipality_id: 111, center_id: @center_a.id, file: @file }
    end
    assert_response :redirect
    follow_redirect!
    assert_select ".card" do |elements|
      assert elements.count == 3
    end

  end

  test "ajax municipality" do
    get municipalities_path, params: { search_state_id: 111 }, xhr: true
    assert_response :success    
    assert_match "Municipio Test A", @response.body
    assert_no_match "Municipio Test B", @response.body

    get municipalities_path, params: { state_id: 111 }, xhr: true
    assert_response :success    
    assert_match "Municipio Test A", @response.body
    assert_no_match "Municipio Test B", @response.body

  end

  test "ajax centers" do
    get centers_path, params: { state_id: 111, municipality_id: 111 }, xhr: true
    assert_response :success    
    assert_match "El Centro", @response.body
  end


end
