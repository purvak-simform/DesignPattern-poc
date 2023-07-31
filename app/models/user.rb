class User < ApplicationRecord
  has_one :coupon

  enum :status, [ :active, :pending, :archived ]
end
