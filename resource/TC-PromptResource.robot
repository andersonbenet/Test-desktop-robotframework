*** Settings ***
Documentation    Demo App Legado

*** Variables ***
${image_dir_sacg}=      ${CURDIR}\\img\\sacg


*** Keywords ***

########################################################
#TC001-Start App SACG
########################################################
Carregar diretório de imagens
    Add Image Path  ${image_dir_sacg}

Abrir App SACG
    Screen Should Contain  start_sacg.png
    Double Click  start_sacg.png

    Wait Until Screen Contain  login.png  60


    Input text	login.png  julianoj307
    Press Special Key  ENTER

    Input text	login.png  teste123
    Press Special Key  ENTER

    ${index}=  Get Text  index.png
    ${lines} =	Get Lines Containing String	${index}	Pressione [Enter] para continuar
    Wait Until Screen Contain  index.png  60
    Press Special Key  ENTER



########################################################
#TC002-Gerar Relatório Tradição - SIAC
########################################################
#Carregar diretório de imagens
#    Add Image Path  ${image_dir}
#
#Abrir App SIAC
#    Screen Should Contain  start_siac.png
#    Double Click  start_siac.png
#
#    Wait Until Screen Contain  logar_siac.png  60
#    ${login}=  Get Text  logar_siac.png
#    ${lines} =	Get Lines Containing String	${login}	Por favor, informe seu usuario
#    Input text	logar_siac.png  julianoj307
#    Press Special Key  ENTER
#
#    Input text	logar_siac.png  teste123
#
#    Press Special Key  ENTER
#    Wait Until Screen Contain  home_siac.png  60
#    Press Special Key  ENTER
#
#Gerar Relatório Tradição
#    ${characters}=  Set Variable  FFC
#    ${count_menu}=  Get length  ${characters}
#    ${menu}=  Get Substring	${characters}	0	1
#
#    Log  ${count_menu}
#    Log  ${menu}
#
#    FOR  ${count}    IN RANGE    0    ${count_menu}
#        ${count_aux}=  Evaluate  ${count}+1
#        ${aux}=  Get Substring	${characters}	${count}  ${count_aux}
#
#        Set Wait Scan Rate  90
#        #        Screen Should Contain  menu_siac.png
#        Input text	menu_siac.png  ${aux}
#    END
