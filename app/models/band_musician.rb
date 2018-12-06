class BandMusician < ApplicationRecord

  belongs_to :band
  has_one :musician

end
