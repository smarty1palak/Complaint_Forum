class ComplaintsController < ApplicationController
  before_action :logged_in_user, only: [:destroy]
  def create
      @complaint= current_user.complaints.build(complaint_params)
      if @complaint.save
        flash[:success] = "Complaint Registered"
        redirect_to root_url
      else
        render 'static_pages/home'
      end
  end

  def destroy
      Complaint.find(params[:id]).destroy
      flash[:success]= "Complaint resolved"
      redirect_to root_url
  end

  private

  def complaint_params
    params.require(:complaint).permit(:content)
  end
end

