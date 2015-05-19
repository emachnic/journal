class User < ActiveRecord::Base
  include AASM
  has_secure_password

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
end
