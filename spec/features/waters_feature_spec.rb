require "rails_helper"
RSpec.feature "Waters", type: :feature do
    context "Update water" do
      let(:water) { Water.create(title: "Title", unit: "Unit", Amount: 10, time: "2023-03-28 13:41:00 UTC") }
      before(:each) do
        visit edit_water_path(water)
      end
    end
 
    scenario "should be successful" do
    within("form") do
        fill_in "Title", with: "Title"
    end
    click_button "Update Water"
    expect(page).to have_content("Water was successfully updated")
    end

    scenario "should be successful" do
    within("form") do
        fill_in "Unit", with: "Unit"
    end
    click_button "Update Water"
    expect(page).to have_content("Water was successfully updated")
    end

    scenario "should be successful" do
    within("form") do
        fill_in "Amount", with: 10
    end
    click_button "Update Water"
    expect(page).to have_content("Water was successfully updated")
    end

    scenario "should fail" do
    within("form") do
        fill_in "Title", with: ""
    end
    click_button "Update Water"
    expect(page).to have_content("Description can't be blank")
    end

    scenario "should fail" do
    within("form") do
        fill_in "Unit", with: ""
    end
    click_button "Update Water"
    expect(page).to have_content("Description can't be blank")
    end

    scenario "should fail" do
    within("form") do
        fill_in "Amount", with: ""
    end
    click_button "Update Water"
    expect(page).to have_content("Description can't be blank")
    end

end
