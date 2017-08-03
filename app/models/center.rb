class Center < ApplicationRecord

  validates :state_id, :municipality_id, :parish_id, presence: true
  validates :name, :direction, presence: true

  has_many :photos

  def full_info
    self.name + " - " + self.direction
  end

  def state_municipality
    self.state + " - " + self.municipality if self.state && self.municipality
  end


  def self.states
    Center.select(:state, :state_id).distinct.map{|c| [c.state, c.state_id]}
  end

  def self.municipalities
    Center.select(:municipality, :municipality_id).distinct.map{|c| [c.municipality, c.municipality_id]}
  end

  def self.centers(state_id, municipality_id)
    Center.where(state_id: state_id, municipality_id: municipality_id).map{|c| ["#{c.name} - #{c.direction}", c.id]}
  end

  def self.municipalities_by_state(state_id)
    Center.where(state_id: state_id).select(:municipality, :municipality_id).distinct.map{|c| [c.municipality, c.municipality_id]}
  end



end
