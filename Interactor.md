# Interactor Design Pattern README

## What is the Interactor Design Pattern?

The Interactor design pattern is a way to organize and manage the complex interactions between different components in your application. It's especially useful when dealing with business logic that involves multiple steps, validations, and decisions which eventually will keep Model clean. 

We can imagine the working of interactor has some similarity like transcation do block, in the sense that both are used to manage and control complex processes in applications. However, they serve different purposes and operate at different levels of abstraction.

In simpler terms, think of an "Interactor" as a mediator that takes care of coordinating the flow of actions and data between different parts of your codebase. It helps to keep your codebase clean, modular, and easy to maintain by separating concerns and encapsulating logic.

## Why Use the Interactor Design Pattern?

1. **Modularity:** The pattern encourages breaking down complex processes into smaller, manageable units of work, making it easier to understand and maintain.
Since Interactors are modular, they can be easily tested in isolation, improving the overall test coverage of your application.

2. **Separation of Concerns:** Each Interactor focuses on a specific task or business logic, reducing coupling between different parts of the application.

3. **Reusability:** Interactors can be reused in different parts of the application or even across projects, saving development time.

## Implementation in a Rails Application

Let's consider a simple example of implementing the Interactor pattern in a Ruby on Rails application.

### Step 1: Install the `interactor` Gem

Add the [interactor](https://github.com/collectiveidea/interactor) gem to your `Gemfile` and run `bundle install`.

```ruby
# Gemfile
gem 'interactor'
```

### Step 2: Create an Interactor

Create a new Ruby file in the `app/interactors` directory. For example, let's create an Interactor to handle user registration.

```ruby
# app/interactors/user_registration_interactor.rb
class UserRegistrationInteractor
  include Interactor

  def call
    if context.email.present? && context.password.present?
      user = User.create(email: context.email, password: context.password)
      context.user = user
    else
      context.fail!(message: 'Email and password are required.')
    end
  end
end
```

### Step 3: Using the Interactor

You can now use the `UserRegistrationInteractor` in your controller or service:

```ruby
# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def create
    result = UserRegistrationInteractor.call(email: params[:email], password: params[:password])

    if result.success?
      redirect_to root_path, notice: 'User registered successfully!'
    else
      flash.now[:alert] = result.message
      render :new
    end
  end
end
```

### Step 4: Handle Results

The `call` method of the Interactor returns a context object. You can use `result.success?` to check if the interaction was successful, and access the result using `result.user`.

## Kinds of Interactors
  There are two kinds of interactor basic interactors and organizers.
  For details check gem documentation.

## References: 
1. https://www.fullstacklabs.co/blog/ruby-on-rails-business-logic-interactors
2. https://medium.com/@lucaspolonuer/ruby-on-rails-boost-your-software-design-skills-with-interactors-e07f1f9a711e
