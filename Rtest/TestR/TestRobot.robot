* Settings *
Library   SeleniumLibrary

#Suite Setup    Log    This test is suite setup, run before every test suite   
#Suite Teardown    Log    This test is teardown, run after every test suite 
# Test Setup    Log  This test is test setup, run before every test case
# Test Teardown    Log  This test is test teardown, run after every test case   
# Default Tags    Total

* Test Cases *
MyTest1
    Log    messageTest1      
    # [Tags]    test1
MyTest2
    Log    messageTest1    
    # Set Tags    test2
    
MyTest3
    Log    messageTest1    
# SeleniumTest1
    # Open Browser    https://google.com   chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q     automation stepbystep  
    # Press Keys    name=q     ENTER  
    # #  Click Button    name=btnk
    # Sleep    2    
    # Close Browser
    # Log    Donetest    
    
# SampleLoginTest
    # [Documentation]    Login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element   id=welcome
    # Sleep    5 
    # Click Element    link=Logout
    # Sleep    2    
    # Close Browser
    # Log    TestDone   
    # Log    This is test by %{username} on %{os}
    
* Variables *
${URL}              https://opensource-demo.orangehrmlive.com/     
#list variables
@{Username_Pass}        Admin      admin123   
#dictionary
&{LoginData}            user=Admin     Pass=admin123
# C:\Users\ngannt>echo %username% - tao bien moi truong

* Keywords *
LoginKW
    Input Text    id=txtUsername    ${Username_Pass}[0]
    Input Password    id=txtPassword    ${LoginData}[Pass]
    Click Button    id=btnLogin