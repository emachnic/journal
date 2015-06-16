class User < ActiveRecord::Base
  include AASM
  has_secure_password
  before_create :create_activation_code

  aasm do
    state :pending_activation, initial: true
    state :active
    state :removed

    event :activate do
      transitions from: :pending_activation, to: :active
    end

    event :remove do
      transitions from: [:pending_activation, :active], to: :removed
    end
  end

  private

  def create_activation_code
    self.activation_code = SecureRandom.urlsafe_base64(32)
  end
end
