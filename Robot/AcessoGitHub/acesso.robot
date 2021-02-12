***Settings***
Library         SeleniumLibrary

***Variables***
${url}          https://github.com/
${login.ok}     testes.estudo.123@gmail.com
${senha.ok}     @123teste

${login.nok}    teste@teste.com.br 
${senha.nok}    123

***Test Cases***
Acessando o endereço e logando no site
    Open Browser            ${url}                      chrome
    Go To                   ${url}/login
    Input Text              id:login_field              ${login.ok}
    Input Password          id:password                 ${senha.ok}
    Click Element           name:commit

    Close Browser

Acessando o endereço e logando com dados inválidos
    Open Browser            ${url}                      chrome
    Go To                   ${url}/login
    Input Text              id:login_field              ${login.nok}
    Input Password          id:password                 ${senha.nok}
    Click Element           name:commit

    Close Browser