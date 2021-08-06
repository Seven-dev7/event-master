class ApplicationController < ActionController::Base
  include CurrentCart
  before_action :set_current_cart
end
