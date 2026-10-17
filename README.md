# Classic Carmen for Windows 11

Este repositório reúne os arquivos de **Where in the World Is Carmen Sandiego?** que eu forneci e uma configuração portátil para iniciar o jogo em computadores com Windows 11 de 64 bits.

## Como jogar

1. Baixe este repositório (em **Code → Download ZIP**) e extraia o ZIP inteiro.
2. Mantenha `Jogar Carmen.bat`, `carmen.conf`, `data/` e `carmen/` juntos na mesma pasta.
3. Dê dois cliques em `Jogar Carmen.bat`.
4. Quando abrir a apresentação, pressione Enter. Na tela de identificação, digite um nome e pressione Enter.

O jogo salva dados na pasta `carmen/`. Por isso, extraia-o em uma pasta em que sua conta tenha permissão para gravar arquivos, como Documentos, e não em `C:\Program Files`.

Use **Alt+Enter** para alternar entre janela e tela cheia. Use **Ctrl+F9** para fechar o DOSBox Staging.

## O que preparei

O jogo original foi feito para MS-DOS e não é um aplicativo nativo do Windows. Para iniciá-lo no Windows 11 sem alterar o executável do jogo, incluí o DOSBox Staging portátil para Windows x64 na pasta `data/`. O arquivo `Jogar Carmen.bat` inicia o emulador, monta `carmen/` como a unidade DOS `C:` e executa `CARMEN.EXE` automaticamente.

A configuração inicia em tela cheia e usa escala inteira, preservando a proporção da imagem original em monitores atuais em vez de esticá-la para preencher um monitor widescreen. Isso aumenta a imagem na tela, mas não converte os gráficos originais para alta resolução.

A pasta `data/` também contém a licença e o arquivo compactado do código-fonte correspondente à versão 0.83.0 do DOSBox Staging.

## Teste

Consegui iniciar `CARMEN.EXE` sob emulação DOS no ambiente Linux: apareceu a tela de apresentação e, depois de pressionar Enter, a tela interativa de identificação do jogador. Não tenho um computador com Windows 11 disponível nesta sessão; portanto, ainda não confirmei o clique duplo do arquivo `.bat` diretamente no Windows 11.

## Conteúdo

- `carmen/` — executáveis, dados e salvamentos que forneci para o jogo.
- `data/` — DOSBox Staging portátil para Windows x64, dependências, licenças e código-fonte da mesma versão.
- `carmen.conf` — configuração da imagem, montagem da pasta e inicialização automática.
- `Jogar Carmen.bat` — lançador de dois cliques.

## Licenças e arquivos do jogo

O DOSBox Staging é distribuído sob as licenças indicadas nos arquivos incluídos em `data/dosbox-staging-v0.83.0/`; o código-fonte da versão 0.83.0 está em `data/SOURCE-v0.83.0.tar.gz`. A distribuição deste repositório não altera nem substitui os direitos associados aos arquivos originais do jogo.
