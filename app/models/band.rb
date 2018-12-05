class Band < ApplicationRecord

  has_many :band_musicians
  has_many :musicians, through: :band_musicians

  validates :name, uniqueness: true

end
