*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When value is set the counter shows it
    Fill Text  input[name="value"]  42
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 42 kertaa

When value is set to zero the counter is zero
    Click  button >> text=Paina
    Fill Text  input[name="value"]  0
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 0 kertaa
