*** Settings ***
Library  SikuliLibrary


*** Variables ***
${image_dir}=  ${CURDIR}\\img
${wait}=  10

*** Keywords ***
Carrega diretório de imagens
  Add Image Path    ${image_dir}
  Log  ${image_dir}

Abre o menu inicial do windows
  Double Click  firefox_start.png
  Sleep  ${wait}
  Input Text    firefox_search.png    Hello World
  Sleep  ${wait}
  Click  firefox_search_click
  Sleep  ${wait}
  Click  firefox_close.png
