***Settings***
Resource        base.robot

Test Setup      Nova Sessao
Test Teardown   Fecha Sessao

***Variables***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_black}      xpath://*[@id="checkboxes"]/input[7]


***Test Cases***
Marcando opção com o ID
    [tags]      thor
    Go To                           ${url}/checkboxes 
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    #Click Element       id:thor 

Marcando opção com CSS Selector
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}     

Marcando opção com Xpath
    [tags]      black
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_black}
    Checkbox Should Be Selected     ${check_black}       