*** Settings ***
Library  SikuliLibrary
Library  SeleniumLibrary


*** Variables ***
${url}=  http://10.10.30.5/portosisapp/
${browser}=  chrome
${image_dir}=  ${CURDIR}\\img
${wait}=  5

*** Keywords ***
Carrega diretório de imagens
  Add Image Path    ${image_dir}

Realizar download do módulo Cobrança
  Click  start_windows
  Sleep  ${wait}
  Click  remote_start
  Sleep  ${wait}
  Click  remote_conectar
  Sleep  ${wait}
  Input Text    remote_password.png   porto@2018
  Sleep  ${wait}
  Click  remote_button_ok
  Sleep  30
  Click  start_browser_ie.png
  Sleep  30
  Click  search_portosis_browser.png
  Sleep  ${wait}
  Click  download_portosis_cobranca.png
  Sleep  ${wait}
  Click  portosis_cobranca_install.png

  Sleep  ${wait}
  Click  portosis_cobranca_install_acoes.png

  Sleep  ${wait}
  Click  portosis_cobranca_install_acoes_opcoes_executar.png

  Sleep  10
  Click  antivirus_liberar.png

  Set timeout	 20
  Click  portosis_cobranca_run.png


Acessar page portosis para download do módulo cobrança
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Download do módulo cobrança
    Sleep  ${wait}
    Click  link_download_mod_cobranca.png
    Sleep  ${wait}
    Click  btn_download_mod_cobranca_manter.png
    Sleep  ${wait}
    Click  run_mod_cobranca.png
    Sleep  ${wait}
    Click  btn_mod_cobranca_run.png

Testar condicao
    @{list}    Create List    Java    Ruby    Python

    FOR    ${item}  IN  @{list}
        Log  ${item}
    END


# Realizar login no módulo cobrança
#   [Arguments]  ${user}  ${password}
#   Sleep  30
#   Input Text    input_login_user.png  ${user}
#   Sleep  30
#   Input Text    input_login_password.png  ${password}
#   Click  button_entrar_login.png




  # Input Text    search_windows_input.png   remote
  # Sleep  ${wait}
  # Click  remote_click.png

  # Double Click  firefox_start.png
  # Sleep  ${wait}
  # Input Text    firefox_search.png    Hello World
  # Sleep  ${wait}
  # Click  firefox_search_click
  # Sleep  ${wait}
  # Click  firefox_close.png
