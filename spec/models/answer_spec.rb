require 'spec_helper'

describe Answer do

  it { should validate_presence_of(:body) }
  it { should belong_to(:question) }
  it { should validate_presence_of(:question_id) }
  it {should have_many(:votes)}

end