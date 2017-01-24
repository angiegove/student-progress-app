require 'rails_helper'

RSpec.describe "routing to student", :type => :routing do
  context "student" do
    it "routes /students/:id to students#show" do
       expect(get: "/students/1").to route_to(
         controller: "students",
         action: "show",
         id: "1"
         )
    end
  end
end
