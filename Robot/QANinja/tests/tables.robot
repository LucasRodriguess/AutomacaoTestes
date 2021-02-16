***Settings***
Resource        base.robot

Test Setup      Nova Sessao
Test Teardown   Fecha Sessao

***Test Cases***
Verifica valor ao informar o número da linha
    [tags]                          VD
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       2       @vindiesel

Descobre a linha pelo texto chave e valida os demais valores
    [tags]                     DT
    Go To                      ${url}/tables
    ${target}=                 Get WebElement                  xpath:.//tr[contains(.,'@vindiesel')]
    Should Contain             ${target.text}                  $ 10.000.000
    Should Contain             ${target.text}                  Domic Toreto              