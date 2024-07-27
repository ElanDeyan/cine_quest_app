# Cine quest

Seria bom ter um lugar para uma referência para os nossos filmes e séries preferidos, não é?

Então, aqui vai uma solução: o Cine Quest App.

## Como executar esse projeto em sua máquina local

> [!WARNING]
> [Este projeto foi desenvolvido com as plataformas Android e Web. Assim, não houve execução em dispositivos iOS.]

1. Este aplicativo foi desenvolvido com Flutter, assim, verifique se você tem o Flutter instalado em sua máquina, executando o seguinte código em um terminal:

```sh
flutter --version
```

Seu terminal deve exibir uma saída semelhante a essa:

```txt
Flutter 3.22.2 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 761747bfc5 (7 weeks ago) • 2024-06-05 22:15:13 +0200
Engine • revision edd8546116
Tools • Dart 3.4.3 • DevTools 2.34.3
```

Caso não tenha o flutter instalado, siga as instruções na [documentação oficial](https://docs.flutter.dev/get-started/install).

2. Clone este repositório para um arquivo em sua máquina. Navegue até o [endereço deste projeto no Github](https://github.com/ElanDeyan/cine_quest_app).

Clique no botão verde "Code" e escolha um método de clone.

3. Abra o projeto no seu editor de código de preferência.

4. Este projeto foi desenvolvido com a [API do WatchMode](https://api.watchmode.com/). Assim, será necessário que crie uma conta, caso não tenha.

5. Já em seu editor de código, crie no diretório raiz de seu projeto (onde está o arquivo Pubspec.yaml) um arquivo chamado `.env`. Ele será o responsável por guardar a chave da API e que será utilizada nas requisições.

6. Seu arquivo `.env` deverá ser escrito da seguinte forma:

```.env
watchModeApiKey=CHAVE_DA_SUA_API
```

O projeto espera que a chave "watchModeApiKey" esteja escrita dessa maneira.

7. A seguir, abra o terminal e execute o seguinte comando:

```sh
flutter pub get
```

Ele vai obter os pacotes relacionados às dependências do aplicativo.

8. O projeto ainda precisa que certos arquivos sejam gerados. Assim, execute o seguinte comando no terminal (confira se tem o dart instalado com o comando `dart --version`):

```sh
dart run build_runner build --delete-conflicting-outputs
```

9. Por fim, execute o projeto com o comando:

```sh
flutter run
```

O terminal irá pedir que escolha o dispositivo para executar o projeto. Digite o número de acordo.

Exemplo da saída no terminal:

```txt
Connected devices:
Chrome (web) • chrome • web-javascript • Google Chrome 127.0.6533.72
Edge (web)   • edge   • web-javascript • Microsoft Edge 127.0.2651.74
[1]: Chrome (chrome)
[2]: Edge (edge)
Please choose one (or "q" to quit): 
```

Aguarde e verá o projeto em ação!
