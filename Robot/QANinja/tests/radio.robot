***Settings***
Resource        base.robot

Test Setup      Nova Sessao
Test Teardown   Fecha Sessao

***Test Cases***
Selecionando por ID
    Go To                           ${url}/radios 
    Select Radio Button             movies      cap
    Radio Button Should Be Set To   movies      cap

Selecionando por Value
    Go To                           ${url}/radios 
    Select Radio Button             movies      guardians
    Radio Button Should Be Set To   movies      guardians    