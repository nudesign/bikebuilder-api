require 'spec_helper'

describe ComponentsController do

  let(:component) { build(:component) }

  describe "GET index" do
    before { Component.stub(:all){ [component] } }

    it "returns the components as json" do
      get :index, format: :json
      body = response.body
      expect(body).to include "\"model\":\"MyString\""
      expect(body).to include "\"cost\":\"999.99\""
      expect(body).to include "\"weight\":19"
    end
  end
end
