***Settings***
Library     SeleniumLibrary

***Variables***
${url}      https://training-wheels-protocol.herokuapp.com/

***Test Cases***
Deve validar o título
    Open Browser        ${url}      chrome
    Title Should Be     Training Wheels Protocol

    Close Browser