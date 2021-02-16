***Settings***
Library         SeleniumLibrary

***Keywords***
Nova sessao
    Open Browser        ${url}      chrome
Encerra sessao
    Close Browser

***Variables***
${url}                    https://github.com/

${email.login}            id:login_field
${senha.login}            id:password
${bot.login}              name:commit

${login.ok}               testes.estudo.123@gmail.com
${senha.ok}               @123teste

${login.nok}              teste@teste.com.br 
${senha.nok}              123

${sinal.+}                xpath:/html/body/div[1]/header/div[6]/details/summary
${novo.repositorio}       xpath:/html/body/div[1]/header/div[6]/details/details-menu/a[1]

${dir.name}               DiretorioTeste
${dir.desc}               Descrição do Diretório

#${bot.novorep}            xpath://*[@id="new_repository"]/div[4]/button 