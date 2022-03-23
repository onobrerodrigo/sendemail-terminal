title Envio de Email - SendEmail
::Arquivo base, sendEmail.pl, escrito por Brandon Zehm <caspian@dotconf.net>
::Arquivo de lote, sendemail.cmd, escrito por Rodrigo Rodrigues, <0rr@outlook.com>
echo off
echo off
cls
echo Envio de Email por SendEmail
echo.
rem Informacoes de local
echo Horario Local
time /t
echo Data Atual 
date /t
echo.
rem Servidores populares
echo Servidores SMTP Populares
echo Outlook: smtp.office365.com
echo Gmail: smtp.gmail.com
echo Yahoo: smtp.yahoo.com
echo.
rem Principais portas de saida 
echo Portas SMTP
echo 587 - TLS
echo 465 - SSL
echo.
rem Paramentros de automacao para envio do email
set /p email_origem=Qual o e-mail de origem:
set /p email_destino=Qual o e-mail de destino:
set /p servidor_smtp=Qual o servidor de saida SMTP:
set /p porta_smtp=Qual a porta de saida:
set /p email_servidor_smtp=Qual o e-mail de autenticacao do servidor SMTP:
set /p senha_servidor_smtp=Qual a senha de autenticacao do servidor SMTP:
set /p assunto=Qual o assunto do e-mail:
set /p corpo=Qual o conteudo do email:

sendemail.exe -o tls=yes -f %email_origem% -t %email_destino% -s %servidor_smtp%:%porta_smtp% -xu %email_servidor_smtp% -xp %senha_servidor_smtp% -u %assunto% -m %corpo% -l ./logs/sendemail.log