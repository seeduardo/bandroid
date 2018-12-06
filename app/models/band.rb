class Band < ApplicationRecord

  has_many :band_musicians
  has_many :musicians, through: :band_musicians
  accepts_nested_attributes_for :band_musicians  

  validates :name, uniqueness: true

  def filled_roles
    self.band_musicians.select {|bm| bm.filled == true}
  end

  def open_roles
    self.band_musicians.select {|bm| bm.filled != true}
  end

end
