require File.dirname(__FILE__) + '/../spec_helper'

describe MenusController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Menu.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Menu.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Menu.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(menu_url(assigns[:menu]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Menu.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Menu.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Menu.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Menu.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Menu.first
    response.should redirect_to(menu_url(assigns[:menu]))
  end

  it "destroy action should destroy model and redirect to index action" do
    menu = Menu.first
    delete :destroy, :id => menu
    response.should redirect_to(menus_url)
    Menu.exists?(menu.id).should be_false
  end
end
