# shariot-node-red

Projeto Node-RED para simulação e envio de dados de sensores (presença, distância e temperatura) via MQTT/HTTP para o ThingsBoard.

## Dependências

Para rodar este projeto, execute o script `setup.sh`, que irá atualizar a lista de pacotes `apt` e instalar os programas necessários.

> ✅ Compatível com distribuições Linux baseadas em Debian. Desenvolvido e testado no Ubuntu.

Execute:

```bash
bash setup.sh
```
## Node-red

### Execução

Após instalar as dependências, você pode iniciar o Node-RED com o comando:

``` bash
node-red
```

### Fluxo do Node-RED

O fluxo principal do Node-RED está salvo no arquivo `fluxo.json` na raiz do projeto.

Para importar o fluxo:

1. Acesse o editor do Node-RED via navegador (normalmente `http://localhost:1880`);
2. No menu superior direito, clique em **Importar**;
3. Selecione o conteúdo do `fluxo.json` ou faça upload direto;
4. Clique em **Importar** e depois **Deploy** para aplicar as alterações.

O fluxo já está pronto para receber dados via MQTT e HTTP e enviar para o ThingsBoard.
## Simulações

No diretório testes/, há scripts que simulam o envio de dados de sensores de forma individual ou em conjunto.

`simular_distancia.sh` — envia uma distância aleatória entre 0 e 400.

`simular_temperatura.sh` — envia uma temperatura aleatória entre 0 e 50.

`simular_presenca.sh` — envia 0 ou 1 como simulação de detecção de presença.

`simular_todos.sh` — executa todos os scripts acima em loop com pequenos intervalos

Exemplo:
``` bash
bash simular_todos.sh
```
