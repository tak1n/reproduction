class WhateverController < ApplicationController
  before_action :authenticate_user!

  def do_something
    if params[:explode]
      typo
    else
      render json: { message: 'something happened' }
    end
  end
end
