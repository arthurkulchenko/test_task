class SeleniumCall

  def self.find_out_message_amount forum_address, login, password
    headless = Headless.new
    headless.start
    wait   = Selenium::WebDriver::Wait.new(:timeout => 100)
    driver = Selenium::WebDriver.for :firefox, driver_path: 'public/mac/geckodriver'
    
    driver.navigate.to forum_address
    
    login_field    = driver.find_element :name => "user"
    password_field = driver.find_element :name => "passwd"
    
    login_field.send_keys login
    password_field.send_keys password
    password_field.submit
    
    wait.until do
      driver.find_element(xpath: "/html/body/div[2]/div[3]/a[2]").attribute('innerHTML')
    end
  end

end