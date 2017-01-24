require 'rails_helper'

RSpec.describe "routing to student", :type => :routing do
  describe "student" do
    context "#show" do
      it "routes /students/:id to students#show" do
         expect(get: "/students/1").to route_to(
           controller: "students",
           action: "show",
           id: "1"
           )
      end
    end
    context "#progress" do
      it "routes /students/:id/progress to students#progress" do
         expect(get: "/students/1/progress").to route_to(
           controller: "students",
           action: "progress",
           id: "1"
          )
      end
    end

  end
end
