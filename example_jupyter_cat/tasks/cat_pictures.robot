
*** Settings ***

Library  SeleniumLibrary


*** Keywords ***

Open singleton browser
    [Arguments]  ${url}=about:blank
    ${Browser is open} =  Run keyword and return status
    ...  Switch browser  singleton
    Run keyword if  ${Browser is open}
    ...  Go to  ${url}
    ...  ELSE
    ...  Open browser  ${url}  chrome  alias=singleton

*** Tasks ***

Find the first cat in google images search
    Open singleton browser  https://google.com/?hl=en
    Input text  name:q  cat picture
    Press key  name:q  \\13
    Click element  link:Images

    Capture element screenshot  css:div[data-ri="0"]

    [Teardown]  Close all browsers



