#!/bin/bash

# Criação de grupos
echo "Criando grupos de usuários..."
groupadd grupo1
groupadd grupo2

# Criação de usuários e adição aos grupos
echo "Criando usuários e adicionando aos grupos..."
useradd -m -G grupo1 -s /bin/bash carlos
useradd -m -G grupo2 -s /bin/bash maria
useradd -m -G grupo1 -s /bin/bash joao

# Gerando senhas aleatórias para os usuários
echo "Definindo senhas para os usuários..."
echo "carlos:$(openssl rand -base64 12)" | chpasswd
echo "maria:$(openssl rand -base64 12)" | chpasswd
echo "joao:$(openssl rand -base64 12)" | chpasswd

# Criação de diretórios e configuração de permissões
echo "Criando diretórios e configurando permissões..."
mkdir -p /home/carlos/dados /home/maria/dados /home/joao/dados
chmod 700 /home/carlos/dados
chmod 700 /home/maria/dados
chmod 700 /home/joao/dados

# Definindo permissões para os diretórios
chown carlos:grupo1 /home/carlos/dados
chown maria:grupo2 /home/maria/dados
chown joao:grupo1 /home/joao/dados

# Permissões para os diretórios compartilhados (caso necessário)
chmod 770 /home/carlos/dados
chmod 770 /home/maria/dados
chmod 770 /home/joao/dados

echo "Infraestrutura de usuários, grupos e diretórios criada com sucesso!"
