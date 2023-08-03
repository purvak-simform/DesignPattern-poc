## Observer Desgin Pattern

It is a Behavioural Design Pattern. It allows an object(known as subject), to notify and update multiple dependent objects(called as observers) when state of subject changes.
This pattern is widely used in real-world scenarios to establish a one-to-many relationship between objects and enable loose coupling between them.

The subject keeps a list of observers, and is responsible for attaching, detaching, and notifying it’s observers when it has changed. 

To understand its usage example some real world scenarios:-
  1. Stock price updates
  2. Weather Monitoring System where if there is change in temp. updates should go to multiple display devices.

## How to use Observers in Rails

1. Add gem [rails-observers](https://https://github.com/rails/rails-observers)
2. create a folder under app/observers
3. create a ruby file having observer class inheriting **ActiveRecord::Observer**
4. Add config in application.rb
      ```ruby
      config.active_record.observers = [:message_observer]
      ```
5. List the ogjects to be obsserved in observer file
      ```ruby
        observe User, Coupon
      ```

## References:
1. https://medium.com/@dljerome/design-patterns-in-ruby-observer-a6e8fe2e5c0a
2. https://borgs.cybrilla.com/tils/observers-in-rails/
