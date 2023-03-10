class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[show edit update destroy]

  # GET /payments/new
  def new
    @payment = Payment.new
    @groups = Group.all
    @group = Group.find(params[:group_id])

    if @group.author == current_user
      @payment = Payment.new
    else
      flash[:alert] = 'You can only create expenses from your categories'
      redirect_to groups_path
    end
  end

  # POST /payments or /payments.json
  def create
    @payment = Payment.new(payment_params)
    @payment.author = current_user
    @groups = Group.where(id: group_params[:groups])
    @group = Group.find(params[:group_id])
    @payment.groups << @groups

    respond_to do |format|
      if @payment.save
        format.html { redirect_to group_url(@group), notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  def group_params
    params.require(:payment).permit(groups: [])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:name, :amount)
  end
end
