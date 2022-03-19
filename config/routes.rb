# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  post 'receive_data' => 'home#receive_data'
end
