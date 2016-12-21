require 'test/unit'
include Test::Unit::Assertions

step "I see <text> on the page" do |text|
  assert @driver.page_source.include? text
end