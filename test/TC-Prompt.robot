*** Settings ***
Documentation    Suite description
Library  SikuliLibrary


*** Variables ***
${image_dir}      ${CURDIR}/images

*** Test Cases ***
TC001-Start Shell on Macbook
    Carrega diretório de imagens
    Abre o Lauchpad





*** Keywords ***
Carrega diretório de imagens
    Add Image Path  ${image_dir}

Abre o Lauchpad
    Click    teste2.png