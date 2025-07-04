# shariot-node-red

Projeto Node-RED para simulação e envio de dados de sensores (presença, distância e temperatura) via MQTT/HTTP para o ThingsBoard.

## Dependências

Para rodar este projeto, execute o script `setup.sh`, que irá atualizar a lista de pacotes `apt` e instalar os programas necessários.

> ✅ Compatível com distribuições Linux baseadas em Debian. Desenvolvido e testado no Ubuntu.

Execute:

```bash
bash setup.sh
```

## Simulações

No diretório testes/, há scripts que simulam o envio de dados de sensores de forma individual ou em conjunto.

`simular_distancia.sh` — envia uma distância aleatória entre 0 e 400.

`simular_temperatura.sh` — envia uma temperatura aleatória entre 0 e 50.

`simular_presenca.sh` — envia 0 ou 1 como simulação de detecção de presença.

`simular_todos.sh` — executa todos os scripts acima em loop com pequenos intervalos

Exemplo:
``` json
bash simular_todos.sh
```