class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    if @purchase.save
      redirect_to purchases_path, notice: 'Song was successfully purchased.'
    else
      render action: "new"
    end
  end

end
