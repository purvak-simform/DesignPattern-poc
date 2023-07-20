**Service Pattern:**

1. The Service pattern focuses on encapsulating complex business logic or external integrations into standalone service objects.

2. The intent of the Service pattern is to centralize and abstract away the implementation details of specific operations or functionalities, providing a clean and modular interface.

3. Services encapsulate a specific domain logic or functionality and may have multiple methods related to that functionality.

4. The Service pattern is suitable for scenarios where you want to keep your controllers or services focused on high-level application logic while delegating specific operations to dedicated service classes.
   
  
# Example
1. When needed to import CSV that has bulk of data to process
2. Write code for the third party API integrations.
3. When there is a need to perform complex calculations or business logic.

```ruby
  class ShoppingCartService
    def initialize(user)
      @user = user
    end

    def add_to_cart(product, quantity)
      # Logic to add the specified product with the given quantity to the user's shopping cart
      # Perform validation, update the cart, etc.
    end

    def remove_from_cart(product)
      # Logic to remove the specified product from the user's shopping cart
      # Perform validation, update the cart, etc.
    end

    def place_order
      # Logic to place an order for the products in the user's shopping cart
      # Perform validation, create order record, update inventory, etc.
    end
  end


class ShoppingCartController < ApplicationController
  before_action :initialize_cart_service

  def add_to_cart
    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i
    @cart_service.add_to_cart(product, quantity)
  end

  def remove_from_cart
    product = Product.find(params[:product_id])
    @cart_service.remove_from_cart(product)
  end

  def place_order
    @cart_service.place_order
  end

  private

  def initialize_cart_service
    @cart_service = ShoppingCartService.new(current_user)
  end
end

```
