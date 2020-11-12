class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end

  def create
    @payment = Payments.new(payment_params)
    @payment.user = current_user
  end

  private

  def message_params
    params.require(:payment).permit(:name, :card_number, :date, :cvc, :user_id, :book_id)
  end
end
