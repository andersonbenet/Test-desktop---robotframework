*** Settings ***
Test Setup  Carrega diretório de imagens
Test Teardown  Stop Remote Server

Resource    ../resource/NotepadResource.robot


*** Test Case ***
Windows Notepad Hello World
  Abre o menu inicial do windows
