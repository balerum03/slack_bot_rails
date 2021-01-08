class ItemsController < ApplicationController
  def create
    @item = Item.new(prime_numbers: [Rails.cache.read('message')])
    respond_to do |format|
      if @item.save
        format.html { redirect_to root_path, notice: 'Numbers are save in the database.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { redirect_to root_path, notice: 'Something went wrong' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end
end
