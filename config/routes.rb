# frozen_string_literal: true

Rails.application.routes.draw do
  resource :surveys, only: [:new, :create] do
    get :check_answers, on: :member
  end
end
