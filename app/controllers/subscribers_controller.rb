class SubscriberController < ApplicationController
  allow_unauthenticated_access
  before_action :set_product

  def create
    @product.subscirbers.create(subscriber_params)
    redirect_to @product, notice: "You are now subscribed"
  end

  private
    def set_product
      @product = Product.find(params[:product_id])
    end

    def subscriber_params
      params.require(:subscirber).parmit(:email)
    end
end
