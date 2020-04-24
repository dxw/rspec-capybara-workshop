# frozen_string_literal: true

feature "Ice cream selection" do
  scenario "Users can choose an ice cream preference", js: true do
    visit root_path

    expect(page).to have_content("National ice cream survey")
    click_on "Start now"

    expect(page).to have_content(I18n.t("ice_cream_question"))
    choose "Chocolate"
    save_and_open_page
    #use it to inspect things on the page, e.g. missing attributes
    click_on "Continue"

    #expect(SOMETHING.ice_cream).to eql("Chocolate")

    expect(page).to have_content("Check your answers before sending your choice")
    save_and_open_screenshot
    #Visually debugging how something is rendered, auto load screenshot then
    #resume test suite
    click_on "Accept and send"

    expect(page).to have_content("Application complete")
    expect(page).to have_content("HDJ2123F")
  end
end
