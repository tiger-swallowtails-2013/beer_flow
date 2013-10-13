require 'spec_helper'

describe VotesController do

  describe "POST create" do
    it "increases post count" do
      expect{
        FactoryGirl.create(:vote)
        }.to change(Vote,:count).by(1)
      end
    end
  end