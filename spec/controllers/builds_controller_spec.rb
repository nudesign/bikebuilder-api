require 'spec_helper'

describe BuildsController do

  describe '#new' do

    it 'instantiates a fresh build' do
    end

    it 'returns the fresh build as JSON' do
    end

    context 'requester specifies a build type' do

      it 'sets the fresh build type as the requested type' do
      end

    end

    context 'requester does not specify a build type' do

      it 'sets the fresh build type as city bike' do
      end

    end

  end


  describe 'GET index' do

    context "requests all builds" do
      let!(:build) { FactoryGirl.build(:build) }

      before do
        Build.stub(:all) { [build] }
        build.stub(:build_type) { FactoryGirl.build(:build_type) }
        get :index, format: :json
        @body = response.body
      end

      it 'assigns existing builds' do
        expect(assigns[:builds].first).to be_a Build
      end

      it { expect(@body).to include "\"name\":\"MyString\"" }
      it { expect(@body).to include "\"image_url\":\"http://placehold.it/250x200\"" }
      it { expect(@body).to include "\"type\":{\"name\":\"road\"" }
      it { expect(@body).to include "\"comments\":[]" }
    end

    context "requests builds of user" do
      let!(:build) { FactoryGirl.build(:build, :with_user) }
      let!(:user) { build.user }

      it 'assigns existing builds' do
        controller.stub(:get_user).with(build.user_id).and_return(user)
        user.should_receive(:builds) { [build] }

        get :index, user_id: build.user_id, format: :json
        expect(assigns[:builds].first).to be_a(Build)
      end
    end

  end

end
