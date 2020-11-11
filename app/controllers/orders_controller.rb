class OrdersController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @order = Order.new
    @order.book = @book
    @order.user = current_user
    @order.status = "Pending seller validation"
    # if @order.confirm
    # @order.value = @order.book.to_f * shipping
    # else
    # @book.value = 0
    # end
    if @order.save
      redirect_to order_path(@order)
      # else ?
    end
  end

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = Order.find(params[:id])
    @book = @order.book
  end

  def update
    @order = Order.find(params[:id])
    @order.status = "pending seller validation"
    @order.save!
    redirect_to order_path(@order)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:book)
  end
end
