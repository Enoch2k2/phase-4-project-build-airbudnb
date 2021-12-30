class SessionsController < ApplicationController
  skip_before_action :authorized

  def get_current_dog
    render json: current_dog
    # retrieve a token and decode that token in order to get the current dog
  end

  def login
    @dog = Dog.find_by(username: params[:username])
    if @dog && @dog.authenticate(params[:password])
      @token = encode_token({ dog_id: @dog.id })
      render json: { dog: @dog, token: @token }, status: :ok
    else
      render json: { errors: ["Username and Password must match"] }, status: :unprocessable_entity

    end
  end

end