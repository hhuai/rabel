require 'spec_helper'

describe CollectionsController do
  context "post article" do
    it "should add article" do
      expect {
        post :create, {topic: {title: 'title', content:'content', form_src: "http://wbiad.com"} }.to_json
      }.to change{Topic.count}.by(1)
    end
  end
end
