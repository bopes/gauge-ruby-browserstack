require 'test/unit'
include Test::Unit::Assertions

step "I go to <url>" do |url|
   @driver.navigate.to url
end

step "I find the search bar with <tag> <value>" do |tag, value|
  @element = @driver.find_element(tag,value)
end

step "I enter <keyword> into search bar" do |keyword|
  @element.send_keys keyword
end

step "I submit" do 
  @element.submit
end

step "Results page title is <expected_title>" do |expected_title|
	assert_match @driver.title, expected_title
end