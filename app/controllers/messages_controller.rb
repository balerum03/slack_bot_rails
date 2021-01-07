class MessagesController < ApplicationController
  def index
    @prime_arr = Rails.cache.read('message')
  end
end
