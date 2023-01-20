## Objetivo
Esse notebook tem como objetivos apresentar análises sobre cancelamentos de vendas que podem acarretar em problemas de logísticos devido a estoque parado. Sendo assim:

1. Quais as marcas que mais vendem?
2. Quais as marcas com mais produtos cancelados?
3. Qual o percentual de vendas por marca?
4. Quais marcas têm o maior percentual de suas vendas canceladas?
5. Os produtos da Apple são 60% mais vendidos do que os demais produtos?
6. Qual a porcentagem de vendas por marca?
7. Quais produtos foram cancelados mais vezes ?
8. Qual o valor total de estoque parado devido a cancelamentos ?
9. Quais produtos possuem maior valor total de estoque parado devido a cancelamentos ?


#### Informações Técnicas
Utilizou-se as seguintes bibliotecas:
```
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.graph_objects as go
from plotly.subplots import make_subplots
from sqlalchemy import create_engine
```
Ferramentas e tecnologias:
<div align="center">
<img width="35" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original-wordmark.svg" />
<img width="35" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-plain-wordmark.svg" />
<img width="32" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlalchemy/sqlalchemy-original-wordmark.svg" />
<img width="32" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" />
</div>

### Conclusão
- Do total de vendas, 19,22% são da Apple, a qual é a marca campeã de vendas, seguida da Lego com 6,41%. Por outro lado, a marca com menor quantidade de produtos vendidos é a Samsung, com apenas 2,85%.

- A Samsung, ocupa ainda, a segunda posição no cancelamento de vendas por marca. Ao investigar, percebemos que esta conta com apenas o Monitor UHD 37", o qual, possivelmente, por ser um dos produtos mais cancelados, seja também o menos vendido.

- Entretanto, quem lidera o ranking de marcas com maior taxa de cancelamento é a Yaber, com cerca de 4,9% do total de suas vendas canceladas.

- Além disso, a marca com maior quantidade de vendas (quase 25 mil) e consequentemente o maior número de cancelamentos (1.169), quando consideramos o percentual de cancelamento de cada marca, esta mesma marca (Apple) ocupa a sétima posição.

- O mesmo vale para a Lego, a qual ocupa o segundo lugar, tanto de marcas mais vendidas quanto do número de vendas canceladas. Porém, a Lego é a décima no ranking de marcas com maior taxa de cancelamento.
- Já o produto com maior valor em estoque devido a cancelamentos é o Headphones Noise Cancelling Wireless Sony com um valor próximo a 280 mil doláres.

**Portanto, as marcas que tiveram mais itens cancelados, não são, necessariamente, as que possuem o maior percentual de cancelamento de vendas.** 

<br>
<br>

<div align="center"> 
Última Atualização: Jan/2023 <br> 
⭐ se você gostou !!
</div>