class TestController < ApplicationController
  def show
  end

  def create
    flash[:notice] = "Created event"
    redirect_to test_path
  end
end
