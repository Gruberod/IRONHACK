require "artii"

class AsciisController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:asciis][:user_text]
    @artii = Artii::Base.new
    @result = @artii.asciify(@text)

    render "results"
  end

end
