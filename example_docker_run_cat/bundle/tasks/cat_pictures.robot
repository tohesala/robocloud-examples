*** Settings ***
Resource          keywords.robot

*** Tasks ***
Find the first cat in google images search
    Open chrome in docker  https://google.com/?hl=en

    Input text  name:q  cat picture
    Press enter

    Click element  link:Images

    Capture element screenshot  css:div[data-ri="0"]

    [Teardown]  Close Browser
