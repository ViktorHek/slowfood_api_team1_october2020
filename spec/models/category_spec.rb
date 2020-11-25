RSpec.describe Category, type: :model do
  describe "is expected to have db colums" do
    it {is_expected.to have_db_column :title}
  end

  describe "is expected to have validation" do
    it {is_expected.to validate_presence_of :title}
  end

  describe "is expected to have many products" do
    it {is_expected.to have_many (:products)}
  end

  describe "Factory" do
    it "is expected to be valid" do
      expect(create(:category)).to be_valid
    end
  end
end
