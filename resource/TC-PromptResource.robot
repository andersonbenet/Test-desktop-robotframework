*** Settings ***
Documentation    Demo App Legado

*** Variables ***
${image_dir}=      ${CURDIR}\\img


*** Keywords ***

########################################################
#TC001-Start App SACG
########################################################

#Carregar diretório de imagens
#    Add Image Path  ${image_dir}
#
#Abrir App SACG
#    Screen Should Contain  start_bat.png
#    Double Click  start_bat.png
#
#
#
#    Wait Until Screen Contain  login_senha.png  60
#
#    ${user}=  Get Text  login_senha.png
#    Input text	login_senha.png  julianoj307
#    Press Special Key  ENTER
#    Input text	login_senha.png  teste123
#    Press Special Key  ENTER

########################################################
#TC002-Start App SIAC
########################################################
Carregar diretório de imagens
    Add Image Path  ${image_dir}
Abrir App SIAC
    Screen Should Contain  start_siac.png
    Double Click  start_siac.png



#    Wait Until Screen Contain  login_senha.png  60
#
#    ${user}=  Get Text  login_senha.png
#    Input text	login_senha.png  julianoj307
#    Press Special Key  ENTER
#    Input text	login_senha.png  teste123
#    Press Special Key  ENTER
