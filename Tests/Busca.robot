*** Settings ***
Resource    ../Resources/Base.robot
Test Setup    Start Session
Test Teardown    Take Screenshot

*** Variable ***
${URL}          http://parodifood.qaninja.academy/
${NAVEGATOR}    chromium


*** Test Case ***
WorkFlow Deve Buscar um único Restaurante
    Go To Restaurants
    Search By                       Debuger
    Restaurant Should Be Visible    DEBUGER KING
    Restaurant Count Should Be      1

Workflow Deve Buscar por categoria
    Go To Restaurants
    Search By                       Cafe
    Restaurant Should Be Visible    STARBUGS COFFEE

Workflow Deve Buscar todos os restaurantes
    Go To Restaurants
    Search By                     A
    Restaurant Count Should Be    5