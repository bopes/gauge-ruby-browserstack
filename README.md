# gauge-ruby-browserstack
[Gauge](http://getgauge.io/) Integration with BrowserStack.

![BrowserStack Logo](https://d98b8t1nnulk5.cloudfront.net/production/images/layout/logo-header.png?1469004780)

<img src ="https://avatars2.githubusercontent.com/u/7044589?v=3&s=200" height = "110">

## Setup
* Clone the repo
* Install dependencies `bundle install`
* Update `default.properties` file inside the `env/default` directory with your BrowserStack Username and Access Key (https://www.browserstack.com/accounts/settings)

## Running your tests
- To run a single test, run `rake single`
- To run parallel tests, run `rake parallel`
- To run local tests, run `rake local`

## Notes
* You can view your test results on the [BrowserStack automate dashboard](https://www.browserstack.com/automate)
* To test on a different set of browsers, check out our [platform configurator](https://www.browserstack.com/automate/ruby#setting-os-and-browser)
* You can export the environment variables for the Username and Access Key of your BrowserStack account
  
  ```
  export BROWSERSTACK_USERNAME=<browserstack-username> &&
  export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
  ```
  
## Additional Resources
* [Documentation for writing automate test scripts in Ruby](https://www.browserstack.com/automate/ruby)
* [Customizing your tests on BrowserStack](https://www.browserstack.com/automate/capabilities)
* [Browsers & mobile devices for selenium testing on BrowserStack](https://www.browserstack.com/list-of-browsers-and-platforms?product=automate)
* [Using REST API to access information about your tests via the command-line interface](https://www.browserstack.com/automate/rest-api)
