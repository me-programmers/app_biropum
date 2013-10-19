require 'spec_helper'

describe "DbJmlhPddks" do
  describe "GET /db_jmlh_pddks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get db_jmlh_pddks_path
      response.status.should be(200)
    end
  end
end
