*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    go to  http://www.amazon.com
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//div[@id='nav-search']/form[@role='search']//input[@value='Go']
    wait until page contains  results for "Ferrari 458"

Select product from search results
    click element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div[2]/div[2]/div/div[1]/h5/a/span

Add product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

Begin checkout
    click link  Proceed to checkout (1 item)
    page should contain element  xpath=//*[@id="authportal-main-section"]/div[2]/div/div/form/div/div/div/h1  Sign in
