*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Press enter
  Press key  name:q  \\13

Open chrome in docker
    [Arguments]  ${url}=about:blank

    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}

    Go to  ${url}
