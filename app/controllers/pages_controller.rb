class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # beautiful landing page, has link to #design page
  def home
  end

  # promts user to choose between custom and preset designs
  def design
  end

  # contains items added by the user
  def basket
    if current_user.cart == nil
      @cart = Cart.create(user_id: current_user.id)
    else
      @cart = current_user.cart
      cart_items = []
        params.delete(:controller)
        params.delete(:action)
        params.each do | key, value|
          cart_items << CartItem.create!(cart_id: @cart.id, quantity: value.to_i, item_id: Item.find(key.to_i).id)
        end
        @cart_items = cart_items.reject {|cart_item| cart_item.quantity === 0}
    end
  end

  def paymentdone

  end
end
