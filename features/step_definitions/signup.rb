# Given(/^I am on demoqa home page$/) do
# @browser.navigate.to "http://demoqa.com/"

# end
# Given("I am in home page") do
#   @browser.navigate.to "https://bugtrackers.herokuapp.com/"
# end

# When("I click on signup button") do
#   @browser.element_find()
# end

# Then("I should able to see {string}") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# # end
# Then ("I should able to see signup pop window") do
# @browser.find_element(xpath: ".//*[@id='popup_modal']/div[2]/div/div[1]").displayed?

# end

# Given ("I am in home page") do
#   @browser.navigate.to "https://bugtrackers.herokuapp.com/"
# end

# When ("I click on signup button") do
#    @browser.find_element(xpath: ".//*[@id='popup_modal']/div[2]/div/div[1]").displayed?

# end
Given ("I am in home page") do
@browser.navigate.to "https://bugtrackers.herokuapp.com/"
end

When ("I click on signup button") do
sleep 3
@browser.find_element(xpath: "//div/div[2]/ul/li[1]/form/div/input").click
end

Then ("I should able to see signup pop window") do
sleep 3
@browser.find_element(xpath: "//div/div[2]/ul/li[1]/form/div").displayed?

end

Given ("I am in sign up pop window") do
@browser.find_element(xpath: "//div/div[2]/ul/li[1]/form/div").displayed?

end

When ("I entered name and username and email id") do
sleep 2
@browser.find_element(id: "user_name").send_keys "deepihigowda"
sleep 2
@browser.find_element(id: "user_username").send_keys "deepikakdre"
sleep 2
@browser.find_element(id: "user_email").send_keys "kgowdah@gmail.com"
end

When ("I entered password and confirm password") do
sleep 2
@browser.find_element(id: "user_password").send_keys "8867134367"
sleep 2
@browser.find_element(id: "user_password_confirmation").send_keys "8867134367" 
@browser.find_element(name: "commit").click
end

Then ("I should see the border color change to blue") do
sleep 3
@browser.navigate.to "https://bugtrackers.herokuapp.com/issues"

end

Given ("I am in bug-tracker page") do
sleep 2
@browser.navigate.to "https://bugtrackers.herokuapp.com/issues"

end

When ("I click on signout button") do
sleep 2
@browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input[2]").click
end

Then ("I should see home page") do
@browser.navigate.to "https://bugtrackers.herokuapp.com/"
end
