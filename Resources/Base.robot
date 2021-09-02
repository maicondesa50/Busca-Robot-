*** Settings ***
Documentation    Arquivo base do projeto (Tudo começa aqui)
Library    Browser
Resource    Actions/Search.robot


*** Keywords ***
Start Session
    New Browser    ${NAVEGATOR}    True
    New Page       ${URL}
    Get Text       css=span        Contains    Nunca foi tão engraçado pedir comida