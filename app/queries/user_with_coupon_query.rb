class UserWithCouponQuery
  attr_reader :relation

  def self.call(relation = Coupon)
    new(relation).call
  end

  def new(relation = Coupon)
    @relation = relation
  end

  def call
    active_coupon.with_user
  end

  def active_coupon
    relation.where(used_once: false, generated_date: Date.today - 1 )
  end

  def with_user
    relation.joins(:user).where(user: { status: active })
  end
end
