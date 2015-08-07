class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.page(params[:page]).order('created_at DESC')
  end

  def show
    @complaint = Complaint.find(params[:id])
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

private
  def complaint_params
    params.require(:complaint).permit(:to, :text, :from)
  end

end
