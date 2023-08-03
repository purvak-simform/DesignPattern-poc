class MessageObserver < ActiveRecord::Observer
  observe Coupon

  def after_save(user)
    user.logger.info('================ record is saved ============')
  end
end
