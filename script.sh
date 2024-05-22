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
top
#    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                               
#2718238 rubenssm  20   0   33,3g 571472 335108 S   6,0   2,0 102:09.17 chrome
    # table of processes
        # PID é o identificador do processo
        # USER é o usuário dono do processo
        # PR é a prioridade do processo, varia de 0 a 139
            # 0 a 139: No sistema Linux, a prioridade de um processo pode variar de 0 a 139.
            # 0 a 99: São prioridades em tempo real.
            # 100 a 139: São prioridades de usuário (ou "nice" priorities).
            # O valor de PR é calculado como PR = 20 + NI
        # NI niceness value
            # O valor de "nice" varia de -20 a 19.
            # -20: Representa a maior prioridade
            # 19: Representa a menor prioridade
        # VIRT (Virtual Memory Size) indica a quantidade total de memória virtual utilizada pelo processo.
            # Inclui toda a memória que o processo pode acessar, incluindo memória mapeada de arquivos, bibliotecas compartilhadas e memória swap.
            # Exemplo: Se um processo aloca 1GB de memória, mapeia um arquivo de 2GB e carrega uma biblioteca compartilhada de 1GB, VIRT seria aproximadamente 4GB.
        # RES (Resident Set Size) indica a quantidade de memória residente (física) utilizada pelo processo.
            # Inclui a memória física que o processo está usando atualmente (excluindo a memória que foi trocada para o disco).
            # Exemplo: Se o mesmo processo está utilizando efetivamente 500MB de memória física, RES seria 500MB.
        # SHR (Shared Memory Size) indica a quantidade de memória compartilhada que o processo está usando.
            # Inclui memória compartilhada entre processos, como bibliotecas compartilhadas.
            # Exemplo: Se o processo está usando 200MB de bibliotecas compartilhadas, SHR seria 200MB.
        # S (Process Status) indica o estado atual do processo.
            # Possíveis Valores:
                # D: Ininterruptível (esperando por I/O)
                # R: Em execução (ou executável)
                # S: Dormindo (em espera)
                # T: Parado (parado por sinal de controle de trabalho)
                # Z: Zumbi (processo terminado, mas ainda na tabela de processos)
        # TIME indica há quanto tempo o processo está aberto
htop
    # human table of processes
ps aux | grep chrome
    # busca os processos cujo nome seja chrome
pgrep chrome
    # retorna os IDs dos processos do chrome em ordem cronológica
kill -9 <pid> <pid2>
    # mata as instâncias dos processos de PID especificados
killall chrome
    # mata todas as instâncias do chrome

    
