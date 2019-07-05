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

    Wait Until Screen Contain  logar_siac.png  60
    ${login}=  Get Text  logar_siac.png
    ${lines} =	Get Lines Containing String	${login}	Por favor, informe seu usuario
    Input text	logar_siac.png  julianoj307
    Press Special Key  ENTER

    Input text	logar_siac.png  teste123
    Press Special Key  ENTER
    Wait Until Screen Contain  home_siac.png  60
    Press Special Key  ENTER

Navegar Page
    ${characters}=  Set Variable  FFC
    ${count_menu}=  Get length  ${characters}
    ${menu}=  Get Substring	${characters}	0	1

    Log  ${count_menu}
    Log  ${menu}

    FOR  ${count}    IN RANGE    0    ${count_menu}
        ${count_aux}=  Evaluate  ${count}+1
        ${aux}=  Get Substring	${characters}	${count}  ${count_aux}

        Set Wait Scan Rate  60
        #        Screen Should Contain  menu_siac.png
        Input text	menu_siac.png  ${aux}
    END
