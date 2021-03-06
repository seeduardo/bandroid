class Musician < ApplicationRecord

  validates :instrument_ids, length: { minimum: 1 }

  belongs_to :user
  has_many :band_musicians
  has_many :bands, through: :band_musicians
  has_many :musician_instruments
  has_many :instruments, through: :musician_instruments

end
