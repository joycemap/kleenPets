module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_customer
      flash.clear
      # if you have rails_customer. You can redirect anywhere really
      redirect_to('/customers/' + current_customer.id.to_s) and return
    elsif current_user
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to('/') and return
    end
  end
end