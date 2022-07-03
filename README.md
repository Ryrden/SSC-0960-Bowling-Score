# SSC0960 - Programação Funcional

## Trabalho 1 - Placar e pontuação de um jogo de boliche

O boliche é um esporte praticado com uma bola pesada e tem como objetivo lançar a bola por uma pista,
derrubar 10 pinos do lado oposto da pista dispostos em formação triangular
(<https://www.infoescola.com/esportes/boliche/>).

A fórmula da contagem de pontos no boliche tem as seguintes variáveis
<https://boliche.com.br/esporte-boliche/contagem-dos-pontos-no-boliche/>

```text
● Os pontos são a soma dos pinos derrubados.

● Exceto quando fizer Strike (derrubar 10 pinos na 1.ª bola) ou Spare (derrubar 10 pinos nas duas bolas
jogadas)

● Se fizer Strike ganha bônus nas 2 bolas jogadas a seguir. Se fizer Spare ganha bônus na próxima bola
jogada. O bônus é igual ao número de pinos derrubados.

● O total de 1 partida pode variar de zero a 300 pontos.
```

A pontuação pode ir de zero (quando nenhum pino é derrubado nas dez jogadas ou “frames”) até o máximo
possível de 300 pontos, ou seja, 12 “strikes” consecutivos. Supostamente, como cada partida tem 10 “frames”
(jogadas), só seriam possíveis 10 “strikes”. Porém, se o jogador derrubar todos os pinos no primeiro arremesso
do 10.º “frame”, tem o direito de jogar mais duas bolas, podendo completar 12 “strikes” numa mesma linha.

Faça um programa que leia a quantidade de pinos derrubados por um praticante de boliche em cada jogada e
imprima:

1. A sequência de pinos derrubados (de acordo com os exemplos de entrada e saída e as anotações de
   contagem de pontos -<https://boliche.com.br/esporte-boliche/contagem-dos-pontos-no-boliche/>);
2. A pontuação final do jogador.

Dica: Para testar seu programa, sugere-se utilizar o seguinte simulador de pontos:
<https://www.bowlinggenius.com/>

### Exemplos de entrada e saída

#### Exemplo 1

|                 Entrada                 |                                      Saida                                      |
| :-------------------------------------: | :-----------------------------------------------------------------------------: |
| 1 4 4 5 6 4 5 5 10 0 1 7 3 6 4 10 2 8 6 | 1 4 \| 4 5 \| 6 / \| 5 / \| X _ \| 0 1 \| 7 / \| 6 / \| X _ \| 2 / 6 \| **133** |

#### Exemplo 2

|               Entrada               |                                      Saida                                       |
| :---------------------------------: | :------------------------------------------------------------------------------: |
| 10 10 10 10 10 10 10 10 10 10 10 10 | X _ \| X _ \| X _ \| X _ \| X _ \| X _ \| X _ \| X _ \| X \_ \| X X X \| **300** |

#### Exemplo 3

|                 Entrada                 |                                      Saida                                      |
| :-------------------------------------: | :-----------------------------------------------------------------------------: |
| 1 4 4 5 6 4 5 5 10 0 1 7 3 6 4 10 8 2 5 | 1 4 \| 4 5 \| 6 / \| 5 / \| X _ \| 0 1 \| 7 / \| 6 / \| X _ \| 8 / 5 \| **132** |

#### Exemplo 4

|                Entrada                 |                                     Saida                                      |
| :------------------------------------: | :----------------------------------------------------------------------------: |
| 8 0 7 0 5 3 9 1 9 1 10 8 0 5 1 3 7 9 0 | 8 0 \| 7 0 \| 5 3 \| 9 / \| 9 / \| X \_ \| 8 0 \| 5 1 \| 3 / \| 9 0 \| **122** |

#### Exemplo 5

|                 Entrada                 |                                      Saida                                      |
| :-------------------------------------: | :-----------------------------------------------------------------------------: |
| 8 2 9 0 4 4 7 2 9 0 10 10 8 0 3 5 9 1 7 | 8 / \| 9 0 \| 4 4 \| 7 2 \| 9 0 \| X _ \| X _ \| 8 0 \| 3 5 \| 9 / 7 \| **133** |
