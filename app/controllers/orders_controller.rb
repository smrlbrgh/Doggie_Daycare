class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  respond_to :html

  def index
    @orders = Order.all
  end

  def show
    respond_with(@order)
  end

  def new
    if @cart.line_items.empty?
      redirect_to storefront_all_items_url, notice: "Your cart is empty."
      return
    end
    @order = Order.new
    @order.user_id = current_user.id
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.add_line_items_from_cart(@cart)

    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil

        format.html { redirect_to storefront_all_items_url, notice: 'Thank you for your order.'}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new}
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated"}
        format.json { render :show, status: :ok, location: @order}
      else
        format.html { render :edit}
        format.json { render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html {redirect_to order_url, notice: 'Order was successfully destoryed'}
      format.json { head :no_content }
    end
  end


  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name, :address, :pay_type, :user_id)
    end
end
