class User < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  # validates :email, inclusion: { in: %w(@),
  #   message: "Hey pal, please try again, as this doesn't look like a valid email address...." }
  has_secure_password
  has_one :musician

  def full_name
    self.first_name + " " + self.last_name
  end

end
