cd /etc
    # qualquer diretório que inicia em / está na raiz da partição
cd ~/Documentos
    # qualquer diretório que inicia em ~/ está na pasta do usuário atual
alias l 
    # imprime o comando que o alias substitui
l 
    # atalho para l='ls -lah'
l /usr/var 
    # l recebe como parâmetro o diretório que deseja que ele liste sem precisar mudar de pasta
cat /etc/group | grep rubenssm
    # No Linux, o usuário pertence originalmente a um grupo de mesmo nome
!!
    # repete o último comando
sudo !!
    # repete o último comando com permissões de super usuário
su
    # switch user - serve para trocar o usuário atual
sudo su
    # muda o usuário para o super usuário
su rubenssm
    # muda para o usuário rubenssm
dnf upgrade
    # atualiza os pacotes
ls -l
    # lista os arquivos de forma longa, com detalhes. Exibe as permissões, dono, grupo
sudo chown user:group
    # altera o usuário e o grupo proprietários do arquivo
sudo chmod 761
    # altera as permissões do dono para rwx, do grupo para rw, e dos outros para x
sudo mkdir dir
    # cria um diretório de dono root, grupo root, e permissões 755
sudo nano file.txt
    # cria um arquivo de dono, grupo root, e permissões 644
sudo chwon -R rubenssm:rubenssm .
    # altera o proprietário e grupo de todos os arquivos e diretórios a partir do atual recursivamente
# CUIDADO: é importante saber que alguns arquivos DEVEM ter o root como dono
sudo chmod -R 777
    # altera as permissões de todos os arquivos e diretórios a partir do atual recursivamente
touch file.txt
    # atualiza os horários de modificação e acesso de cada ARQUIVO para o horário atual. 
    # CRIA O ARQUIVO se não existir
rm dir/file.txt
    # exclui o arquivo
rm dir/*.txt
    # exclui todos os .txt
rm -rf dir
    # exclui o diretório e todos os arquivos dentro
find . -type f -iname "*.txt"
    # busca, no diretório atual (.), todos os arquivos (-type f), 
    # cujo nome termine em (*.txt), ignorando maiúsculas (iname)
find /etc -type f -iname "*.conf"
    # busca os .conf na pasta /etc
find /etc -type f -not -iname "*.conf"
    # busca qualquer arquivo que não seja .conf na pasta /etc
find /etc -type d -perm 0644
    # busca os diretórios com permissão 644 na pasta /etc
find / -type f -size -1M || find / -size +100k || find / -size 100k 
    # busca arquivos menores que 1MB, maiores que 100kB ou de 100kB a partir do diretório raiz
find . -maxdepth 1 -type f -iname "*.txt"
    # busca, APENAS NO DIRETÓRIO (sem ser recursivamente),
    # os arquivos .txt ignorando maiúsculas (-i)
grep -i "function" /var/log/log1239.txt
    # busca o texto "function" dentro do arquivo especificado ignorando maiúsculas
grep -i -n -r "git" / 
    # busca o texto "git" recursivamente (-r) a partir do diretório raiz
    # exibindo o número das linhas (-n) e ignorando maiúsculas (-i)
find / -type f -iname "*.php" -exec grep -i -n "function" {} +
    # busca a partir do diretório raiz os arquivos de extensão php ignorando maiúsculas
    # que contenham o texto "function"
ls > outfile.txt
    # redireciona a saída padrão de ls para o arquivo outfile.txt
find / -type f -iname "*.php" -exec grep -i -n "function" {} + > outfile.txt
    # busca a partir do diretório raiz os arquivos de extensão php ignorando maiúsculas
    # que contenham o texto "function"
    # e imprime o resultado no arquivo outfile.txt
find / -type f -iname "*.php" -exec grep -i -n "function" {} + | tee outfile.txt
    # busca a partir do diretório raiz os arquivos de extensão php ignorando maiúsculas
    # que contenham o texto "function"
    # e vai imprimir tanto na saída da padrão quanto no arquivo outfile.txt
    # The tee command is named after plumbing terminology for a T-shaped pipe splitter
