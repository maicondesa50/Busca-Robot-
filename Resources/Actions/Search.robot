*** Settings ***
Documentation    Ações da funcionalidade de busca de restaurantes


*** Variable ***
${DIV_BOX_RESTAURANT}    css=div[class="place-info-box"][style="opacity: 1;"]


*** Keywords ***
Go To Restaurants
    Click       text=Estou Com fome!
    Get Text    css=h1 strong      contains    Ta na hora de matar a fome!

Search By
    [Arguments]    ${Value}
    Click        css=.search-link
    Fill Text    css=input[formcontrolname="searchControl"]    ${Value}

Restaurant Should Be Visible
    [Arguments]    ${Name}
    Wait For Elements State    ${DIV_BOX_RESTAURANT}    visible     10
    Get Text                   ${DIV_BOX_RESTAURANT}    Contains    ${Name}

Restaurant Count Should Be
    [Arguments]    ${Qtd}
    Wait For Elements State    ${DIV_BOX_RESTAURANT}     visible    10
    Get Element Count          ${DIV_BOX_RESTAURANT}     equal      ${Qtd}
