*** Settings ***
Library  SikuliLibrary


*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\img

*** Keywords ***
Carrega diretório de imagens
  Add Image Path    ${IMAGE_DIR}
  Log  ${IMAGE_DIR}

Abre o menu inicial do windows
  Double Click  windows.png
