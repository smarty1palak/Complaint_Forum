class StaticPagesController < ApplicationController
  def home
    @complaint = current_user.complaints.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
