require File.dirname(__FILE__) + '/../spec_helper'

describe ConferencesController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Conference.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Conference.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Conference.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(conference_url(assigns[:conference]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Conference.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Conference.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Conference.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Conference.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Conference.first
    response.should redirect_to(conference_url(assigns[:conference]))
  end

  it "destroy action should destroy model and redirect to index action" do
    conference = Conference.first
    delete :destroy, :id => conference
    response.should redirect_to(conferences_url)
    Conference.exists?(conference.id).should be_false
  end
end
