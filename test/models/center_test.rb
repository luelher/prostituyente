require 'test_helper'

class CenterTest < ActiveSupport::TestCase

  def setup
    @center = Center.new(state_id: 111, municipality_id: 111, parish_id: 111, name: "El Centro", direction: "La dirección")
    
  end

  test "Valid Center" do
    assert @center.valid?
    assert @center.save
  end

  test "Not Valid Center without ids" do
    @center.state_id = nil
    refute @center.valid?

    @center.state_id = 111
    @center.municipality_id = nil
    refute @center.valid?

    @center.state_id = 111
    @center.municipality_id = 111
    @center.parish_id = nil
    refute @center.valid?
  end

  test "Not Valid Center without name or direction" do
    @center.name = ""
    refute @center.valid?

    @center.name = "El Centro"
    @center.direction = ""
    refute @center.valid?
  end

  test "#photos" do
    # TODO
    assert true
  end


end
