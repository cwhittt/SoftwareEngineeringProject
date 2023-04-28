require "rails_helper"
RSpec.describe WatersController, :type => :controller do
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end
        context "GET #show" do
            let!(:water) { Water.create(title: "Title", unit: "Unit", Amount: 10, time: "2023-03-28 13:41:00 UTC") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
        context "GET #show" do
            let!(:water) { Water.create(title: "Title", unit: "Unit", Amount: 10, time: "2023-03-28 13:41:00 UTC") }
            it "returns a success response" do
                get :show, params: { id: water}
                expect(response).to be_success
            end
        end
    end
end

