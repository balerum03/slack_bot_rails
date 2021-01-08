# frozen_string_literal: true

Rails.application.routes.draw do
  root 'messages#index'
  resources 'items', :only => [:create]
end
