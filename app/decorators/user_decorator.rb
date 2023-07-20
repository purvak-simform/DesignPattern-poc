class UserDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
    def created_at
      helpers.content_tag :span, class: 'time' do
        object.created_at.strftime("%a %m/%d/%Y")
      end
    end

  def full_name
    if name.blank? && lastname.blank?
      'No name present'
    else
      "#{name} #{lastname}".strip.upcase
    end
  end
end
