*** Settings ***
Documentation    Demo App Legado
Library  Process
Library  SikuliLibrary     mode=NEW
Library  String
Suite Setup        Start Sikuli Process
#Suite Teardown     Stop Remote Server

Resource  ../resource/TC-PromptResource.robot


*** Test Cases ***
#TC001-Start App SACG
#    Carregar diretório de imagens
#    Abrir App SACG


TC002-Start App SIAC
    Carregar diretório de imagens
    Abrir App SIAC
    Navegar Page