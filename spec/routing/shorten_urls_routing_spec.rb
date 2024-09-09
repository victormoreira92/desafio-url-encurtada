require "rails_helper"

RSpec.describe ShortenUrlsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shorten_urls").to route_to("shorten_urls#index")
    end

    it "routes to #show" do
      expect(get: "/shorten_urls/1").to route_to("shorten_urls#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/shorten_urls").to route_to("shorten_urls#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/shorten_urls/1").to route_to("shorten_urls#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/shorten_urls/1").to route_to("shorten_urls#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/shorten_urls/1").to route_to("shorten_urls#destroy", id: "1")
    end
  end
end
