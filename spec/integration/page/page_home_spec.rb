require "spec_helper"

describe "Page home access" do
   before do
      visit "/"
   end

   it "show page home" do
      current_path.should eql(root_path)
   end

   it "displays message welcome" do
      expect(page).to have_content("Seja bem vindo!")
   end
end