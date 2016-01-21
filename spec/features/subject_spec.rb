require 'spec_helper'

describe "view subject page", :js => true do

	it "The page should a list of subject" do
		visit subjects_path
		page.save_page("tmp/capybara/subject_page.html")
		page.driver.render("homepage.png", { format: "png" })
	end
end