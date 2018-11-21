*** Settings ***
Documentation  Sikuli Library Demo
Library  SikuliLibrary
Resource    ../resource/NotepadResource.robot


*** Test Case ***
Windows Notepad Hello World
  Carrega diretório de imagens
  Abre o menu inicial do windows
