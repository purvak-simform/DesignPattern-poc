# app/interactors/user_registration_interactor.rb
class UserRegistrationInteractor
  include Interactor

  def call
    user = context.user
    if user.present? && user.name.present?
      user.update(user_name: "MyApp1234" + user.name)
    else
      context.fail!(message: 'User should be present required.')
    end
  end
end
