***Settings***
Resource        base.robot

Test Setup      Nova sessao
Test Teardown   Encerra sessao

***Test Cases***
Acessando o endereço e logando no site
    [tags]      login.ok
    Go To                   ${url}/login
    Input Text              ${email.login}              ${login.ok}
    Input Password          ${senha.login}              ${senha.ok}
    Click Element           ${bot.login}
    Sleep                   2

    Page Should Contain     Get the Student Developer Pack

Acessando o endereço e logando com dados inválidos
    [tags]      login.nok      
    Go To                   ${url}/login
    Input Text              ${email.login}              ${login.nok}
    Input Password          ${senha.login}              ${senha.nok}
    Click Element           ${bot.login}

    Page Should Contain     Incorrect username or password.

Acessa o site e criar um novo repositório
    [tags]      diretorio
    Go To                   ${url}/login
    Input Text              ${email.login}              ${login.ok}
    Input Password          ${senha.login}              ${senha.ok}
    Click Element           ${bot.login}
    Sleep                   2
    Page Should Contain     Get the Student Developer Pack
    #Click Element           css:summary[class='Header-link']
    Click Element           ${sinal.+}
    Click Element           ${novo.repositorio}
    Input Text              id:repository_name          ${dir.name}
    Input Text              id:repository_description   ${dir.desc}   
    Select Checkbox         id:repository_auto_init 
    Click Element           xpath://*[@id="new_repository"]/div[4]/button 

