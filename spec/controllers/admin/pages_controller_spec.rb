require 'spec_helper'

describe Admin::PagesController do
  let(:page) { FactoryGirl.build_stubbed(:page) }

  before { set_as_a_resource page }

  describe "GET index" do
    pending "assigns the root pages" do
      Page.should_receive(:roots).and_return 'root_pages'

      get :index

      controller.should assign_to(:pages).with('root_pages')
    end
  end

  describe "POST create" do
    pending "redirects to the new page" do
      page.stub :save => true

      post :create

      response.should redirect_to(admin_page_url(page))
    end
  end

  describe "PUT update" do
    pending "redirects to the page" do
      page.stub :update_attributes => true

      post :update, :id => 1

      response.should redirect_to(admin_page_url(page))
    end
  end

  describe "DELETE destroy" do
    before { page.stub :destroy }

    pending "sets the flash" do
      delete :destroy, :id => 1

      controller.should set_the_flash
    end

    pending "doesn't set the flash on xhr requests'" do
      xhr :delete, :destroy, :id => 1

      controller.should_not set_the_flash
    end
  end
end
