# Automação de Infraestrutura no Linux

Este projeto tem como objetivo criar um script de automação para configurar toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões de forma automática. Com isso, toda nova máquina virtual (MV) que for iniciada e executar este script estará pronta para uso imediatamente.

Além disso, o script será carregado para o GitHub, permitindo fácil reutilização para futuras máquinas virtuais.

## Objetivo

Automatizar a criação de usuários, grupos, diretórios e permissões de forma prática e eficiente, garantindo que novas instâncias de máquinas virtuais estejam configuradas corretamente ao executar o script.

## Funcionalidades

- Criação de usuários e grupos
- Criação de diretórios padrão para os usuários
- Configuração de permissões para arquivos e diretórios
- Adição de usuários a grupos específicos
- Configuração de senhas de usuários
- Instalação e configuração de pacotes necessários

## Pré-requisitos

- Linux (Ubuntu ou similar) ou WSL2 para Windows
- Acesso de administrador (root) no sistema
- Git instalado no sistema para clonar o repositório

## Instalação

1. Clone este repositório para a sua máquina local:

    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    ```

2. Navegue até o diretório do repositório:

    ```bash
    cd seu-repositorio
    ```

3. Torne o script executável:

    ```bash
    chmod +x script.sh
    ```

## Execução

1. Execute o script como root ou com privilégios administrativos:

    ```bash
    sudo ./script.sh
    ```

2. O script irá configurar automaticamente os usuários, grupos e permissões, e o sistema estará pronto para uso após a execução.

## Autor

[Caio Castro](https://github.com/caionzxt)
