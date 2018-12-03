class Band < ApplicationRecord

  has_many :band_musicians
  has_many :musicians, through: :band_musicians
  has_many :openings
  has_many :instruments, through: :openings

end
