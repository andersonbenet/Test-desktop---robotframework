
*** Settings ***
Library  SikuliLibrary


*** Variables ***
#As imagens da pasta img devem estar de acordo com a interface do seu PC!!!! Tire os prints necessários!
${image_dir}  C:\\Users\\anderson.benet\git\\Test-desktop---robotframework\\img

*** Keywords ***
Carrega diretório de imagens
    Add Image Path    ${image_dir}

Abre o menu inicial do windows
    Click    start_windows.png
