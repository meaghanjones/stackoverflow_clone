require 'rails_helper'

describe "the create a question process" do
  it "creates a question authored by a user" do
    question = FactoryGirl.create(:question)
    user = User.find_by(:id => question.user_id)
    question.user_id.should eq user.id
  end
end
