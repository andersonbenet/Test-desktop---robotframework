*** Settings ***
Test Setup  Carrega diretório de imagens
Test Teardown  Stop Remote Server

Resource    ../resource/Notepad.resource


*** Tasks ***
# --Test Case
# TC001 - Install Portosis módulo Cobrança
#     Realizar download do módulo cobrança
#     # Realizar login no módulo cobrança  teste  123

TC002 - Install local Portosis módulo Cobrança

    Testar condicao
