class ComplaintsController < ApplicationController
  def new
  end

  def create
    render plain: params[:complaint].inspect
  end
end
