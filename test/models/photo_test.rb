require 'test_helper'

class PhotoTest < ActiveSupport::TestCase

  def setup 
    # load_centers
    @center = Center.new(state_id: 111, municipality_id: 111, parish_id: 111, name: "El Centro", direction: "La dirección")

    @center.save

    test_image = Rails.root.join('test', 'fixtures', 'files', 'test_photo.jpeg').to_s
    @file = Rack::Test::UploadedFile.new(test_image, "image/jpeg")
    @photo = Photo.new(file: @file, center_id: @center.id)
  end

  test "Valid Photo" do
    assert @photo.valid?
    assert @center.save
  end

  test "Not Valid Center without ids" do
    @photo.center_id = nil
    refute @photo.valid?

    @photo.center_id = @center.id
    @photo.file = nil
    refute @photo.valid?
  end

end
