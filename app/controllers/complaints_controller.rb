class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.all
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
      redirect_to @complaint
    else
      render 'new'
    end
  end

private
  def complaint_params
    params.require(:complaint).permit(:to, :text, :from)
  end

end
