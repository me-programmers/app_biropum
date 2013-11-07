require 'spec_helper'

describe "FotoGaleris" do
  describe "GET /foto_galeris" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get foto_galeris_path
      response.status.should be(200)
    end
  end
end
