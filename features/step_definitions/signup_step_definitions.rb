 Given ("I am on Bug-tracker homepage") do
 sleep 2
 @browser.navigate.to "https://bugtrackers.herokuapp.com/issues"
 end

 When ("I signup with valid credential") do
 sleep 2
 @browser.find_element(xpath: "//div/div[2]/ul/li[1]/form/div/input").click
 sleep 2
 @browser.find_element(xpath: "//div/div[2]/ul/li[1]/form/div").displayed?
 sleep 2
 @browser.find_element(id: "user_name").send_keys "varsha"
 sleep 2
 @browser.find_element(id: "user_username").send_keys "varshuD"
 sleep 2
 @browser.find_element(id: "user_email").send_keys "varsha09@gmail.com"
 sleep 2
 @browser.find_element(id: "user_password").send_keys "8867134367"
 sleep 2
 @browser.find_element(id: "user_password_confirmation").send_keys "8867134367" 
 @browser.find_element(name: "commit").click
 end

 Then ("I should be able to sign in succesfully") do
 puts "sign in successfully"
 end
 Given ("I am in dashboard page") do
 sleep 2
 @browser.navigate.to "https://bugtrackers.herokuapp.com/issues"
 end
 When ("I click on signout button") do
 sleep 2
 @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input[2]").click
 end
 Then("I should see {string}") do |var|
 var1=@browser.find_element(xpath: ".//*[@id='flash']/div/p").text
 if var1==var
 puts "#{var1}"
 else
 raise.Expection.new "#{var1} not found"
 end
end




