*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
*** Variables ***

*** Test Cases ***
User must sing in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Common.Begin Web Test
    Amazon.Search for Products
    Amazon.Select product from search results
    Amazon.Add product to Cart
    Amazon.Begin checkout
    Common.End Web Test

