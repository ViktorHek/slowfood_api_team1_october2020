RSpec.describe "GET/api/products" do
  let!(:categories){3.times{create(:category)}}


  describe "successfully get products sorted in categories" do
    before do
      get "/api/categories"
    end

    it "expected to return a 200 response" do
      expect(response).to have_http_status 200
    end
  
    it "expected to return all categories" do
      expect(response_json["categories"].count).to eq 3
    end
  end
end