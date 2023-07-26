# Decorator

Decorator provides a way to dynamically add behavior to objects without interfering with the behavior of other objects in the same class. Decorator is useful for cleaning up the logic within views and controller in rails.

The **Draper gem** makes it essentially seamless to integrate, resulting in a more maintainable codebase that's easier to ensure full test coverage.

```ruby
#app/decorators/user_decorator.rb
class UserDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
    def created_at
      'No name present'
    else
      helpers.content_tag :span, class: 'time' do
        object.created_at.strftime("%a %m/%d/%Y")
      end
    end

  def full_name
    if name.blank? && lastname.blank?
      "#{name} #{lastname}".strip.upcase
    end
  end
end
```
