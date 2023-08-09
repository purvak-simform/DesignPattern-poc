class UserWithCouponQuery
  attr_reader :relation

  def self.call(relation = Coupon)
    new(relation).call
  end

  def initialize(relation = Coupon)
    @relation = relation
  end

  def call
    recent_active_coupon
  end

  def recent_active_coupon
    relation.where(used_once: false)
  end

  def with_user
    relation.joins(:user).where(user: { status: 'active' })
  end
end
