class PurchasesController < ApplicationController

  def index
    @purchases = current_user.purchases
  end

  def new
    @song = Song.find_by_id(params[:song_id])
    @purchase = Purchase.new
    @purchase.song_id = @song.id
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    @purchase.user = User.first
    if @purchase.save
      redirect_to root_path, notice: 'Song was successfully purchased.'
    else
      render action: "new"
    end
  end

end
