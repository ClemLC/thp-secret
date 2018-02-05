class StaticPagesController < ApplicationController
  def home
  end

  def secret
    render 'secret'
  end
end
