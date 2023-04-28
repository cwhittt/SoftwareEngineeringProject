require "rails_helper"


describe "Water Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating water" do
      water = Water.new(title: "Content of the title")
      expect(water.valid?).to eq(false)
    end
    it "ensures the unit is present when creating water" do
        water = Water.new(unit: "Unit")
        expect(water.valid?).to eq(false)
    end
    it "ensures the amount is present when creating water" do
        water = Water.new(amount: 10)
        expect(water.valid?).to eq(false)
    end
    it "should not be able to save water when title missing" do
        water = Water.new(title: "Some description content goes here")
      expect(water.save).to eq(false)
    end
    it "should be able to save water when have description and title" do
        water = Water.new(title: "Title", unit: "Unit", Amount: 10, time: "2023-03-28 13:41:00 UTC")
      expect(water.save).to eq(true)
    end
  end
end


describe "Water Attribute Requirements on Edit", :type => :model do
  context "Edit water" do  
    before (:each) do
      @water = Water.create(title: "Title", unit: "Unit", Amount: 10, time: "2023-03-28 13:41:00 UTC")
 
      end
    it "ensures the title is present when editing water" do
      @water.update(:title => "New Title")
      expect(@water.title == "New Title")
    end
    it "ensures the unit is present when editing water" do
        @water.update(:unit => "Unit")
        expect(@water.unit == "Unit")
    end
    it "ensures the unit is present when editing water" do
        @water.update(:amount => 10)
        expect(@water.amount == 10)
    end
  end
end