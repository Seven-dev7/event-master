module CurrentCart
  
  private

  def set_current_cart
    return unless current_user

    if !current_user.cart.present?
      @cart = Cart.create(user_id: current_user.id)
    else
      @cart = Cart.find_by(user_id: current_user.id)
    end
  end
  
end