***Settings***
Library     SeleniumLibrary

***Variables***
${url}      https://training-wheels-protocol.herokuapp.com/

***Test Cases***
Deve validar o título
    Open Browser        ${url}      chrome
    Click Element       a:Checkboxes              
    Close Browser