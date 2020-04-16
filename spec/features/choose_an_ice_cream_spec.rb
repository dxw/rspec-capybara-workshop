# frozen_string_literal: true

feature "Ice cream selection" do
  scenario "Users can choose an ice cream preference", js: true do
    visit root_path

    expect(page).to have_content("National ice cream survey")
    click_on "Start now"

    expect(page).to have_content(I18n.t("ice_cream_question"))
    select "Chocolate", from: "What is your favourite ice cream?"
    click_on "Continue"

    expect(page).to have_content("Check your answers before sending your choice")
    click_on "Accept and send"

    expect(page).to have_content("Application complete")
    expect(page).to have_content("HDJ2123F")
  end
end
