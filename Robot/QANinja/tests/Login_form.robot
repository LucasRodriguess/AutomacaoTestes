***Settings***
Resource        base.robot

Test Setup      Nova Sessao
Test Teardown   Fecha Sessao

***Keywords***
Login With
    [Arguments]             ${uname}                            ${pass}

    Input text              css:input[name=username]            ${uname}
    Input text              css:input[name=password]            ${pass}
    Click Element           class:btn-login

Should Contain Login Alert
    [Arguments]             ${message_alert}

    ${message}=             Get WebElement                      id:flash
    Should Contain          ${message.text}                     ${message_alert}   

Should See Logger User 
    [Arguments]             ${full_name}    

    Page Should Contain     Olá, ${full_name}. Você acessou a área logada! 

***Test Cases***
Login com sucesso
    [tags]                  login_ok
    Go To                   ${url}/login
    Login With              stark                               jarvis!

    Should See Logger User  Tony Stark

Login inválido
    [tags]                  login_error
    Go To                   ${url}/login
    Login With              stark                               123
    ${message}=             Get WebElement                      id:flash
    Should Contain Login Alert                                  Senha é invalida! 

Usuário não cadastrado
    [tags]                  login_user404
    Go To                   ${url}/login
    Login With              lucas                               123456
    ${message}=             Get WebElement                      id:flash
    Should Contain Login Alert                                  O usuário informado não está cadastrado!