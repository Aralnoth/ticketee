require 'spec_helper'

describe ProjectsController do
	it "display an error for a missing project" do 
		get :show, :id =>"not-here"
		response.should redirect_to(project_path)
		message = "The project you were looking for could not be found."
		flash[:alert].should == message
	end
end
