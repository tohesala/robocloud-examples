
*** Settings ***

Library  SeleniumLibrary
Library  SeleniumScreenshots


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

    Add note
    ...  css:div[data-ri="0"]
    ...  text=Google Cat

    Capture and crop page screenshot  cat.png  css:div[data-ri="0"]

    [Teardown]  Close all browsers



