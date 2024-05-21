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