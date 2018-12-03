class Instrument < ApplicationRecord

  has_many :openings
  has_many :bands, through: :openings
  has_many :musician_instruments
  has_many :musicians, through: :musician_instruments


end
