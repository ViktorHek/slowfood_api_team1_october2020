require 'rails_helper'
RSpec.describe Product, type: :model do
  describe "is expected to have db colums" do
    it {is_expected.to have_db_column :title}
    it {is_expected.to have_db_column :ingredients}
    it {is_expected.to have_db_column :price}
  end

  describe "is expected to have validation" do
    it {is_expected.to validate_presence_of :title}
    it {is_expected.to validate_presence_of :ingredients}
    it {is_expected.to validate_presence_of :price}
  end

  describe "is expected to have price as an integer greter then 0" do
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_numericality_of(:price).is_greater_than(0).only_integer }
  end

  describe "is expected to belong to one category" do
    it {is_expected.to belong_to(:category)}
  end

  describe "Factory" do
    it "is expected to be valid" do
      expect(create(:product)).to be_valid
    end
  end
end