**COMO CRIAR UMA TABELA EM ABAP?**

1. **Definição**

Antes de criar uma tabela em ABAP definiremos o seu conceito básico. Tabela interna em SAP ABAP é uma sequencia de entradas que a semelha ao conceito de tabelas nos bancos de dados, mas armazenadas na memória. Sendo um objeto global reutilizável usado para definir estruturas e os atributos funcionais de uma tabela.

1. **Criando uma tabela Z com Elementos de Dados e Domínios**

Para criar uma tabela em ABAP o primeiro passo a se seguir é entrarmos na transação, /NSE11 (*N* para abrir na tela atual, ou *O* para abrir em uma nova tela), a partir da tela inicial, após inserirmos damos *enter* para abrir a transação.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.001.png)

A transação SE11 referenciará a tela do dicionário, nela criaremos a tabela. Na opção Tab.banco dados insere-se o nome da tabela, por regra se nomeia iniciando com a letra Z ou Y, neste caso a nomearemos de “ZTB\_TEST”, com isso vamos em criar.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.002.png)

Em criar, precisaremos preencher alguns campos para que a tabela seja criada sendo-os:

Descrição breve: Como o nome já diz, insere-se uma sucinta descrição sobre a tabela, neste exemplo será “Tabela teste”;

Classe de entrega: Geralmente se coloca A;

Data Browser/ atualiz.visão tabs.: Exibição/ atualização permitida;



![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.003.png)

Desta forma a tabela já está criada, com isso iremos criar campos na tabela. Inseriremos em Campo para exemplo os seguintes campos MATRICULA e NOME, logo que MANDT é colocada em toda tabela para identificar o mandante. As células Elemento Dados dos referentes campos MATRICULA e NOME não estão cadastradas, pois, não apresentam valores em CtgDados (Categoria do dado) e nem o seu comprimento. Com isso criaremos os elementos de dados “ZED\_MATR” e “ZED\_NOME”.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.004.png)

Antes de criarmos um elemento de dados, precisamos salvar a tabela em um workbench ou local, indo no disquete à direta superior da tela.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.005.png)

Exemplo de salvando em um workbench 

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.006.png)

Depois de salvar a tabela, realizando novamente a transação “/NSE11”, introduziremos agora em Categoria Dados o nome que foi dado na tabela ZED\_TEST para o elemento dado, neste caso usaremos o relacionado ao campo MATRICULA, o ZED\_MATR, os passos a seguir deveram ser feitos para cada um dos elementos da tabela. 



![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.007.png)

Ao clicar em criar, a próxima tela é para escolhermos o tipo de ZED\_MATR que será “Elemento de dados”, confirmando segue a criação do elemento

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.008.png)


Da mesma forma que na criação da tabela devemos preencher alguns dados, como a Descrição breve e o Domínio. Para a criação do Domínio basta criar um domínio (ZOD\_MATR), e clicar duas vezes sobre ela, e na próxima tela criar.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.009.png)



![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.010.png)

Na tela de criação do domínio é precisa preencher os seguintes dados também, a descrição breve, o CtgDados que é Categoria do Dado, neste exemplo o campo matrícula será do tipo CHAR e terá 10 posições. Depois basta apenas salvar no disquete e precisaremos ativar esse domínio clicando no ícone marcado de azul. 

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.011.png)

Dentro do Ativar, selecionamos o objeto que queremos ativar, “ZOD\_MATR”, e confirmamos. Já ativo voltamos para a tela de criação de elemento de dados, para voltar basta clicar no botão verde contendo duas setas para direita no canto superior da tela. 

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.012.png)

Novamente em elemento de dados é preciso inserir a denominação do campo, na abra “Demomin.campo”, e introduzir um nome para cada opção, o comprimento será preenchido automaticamente ao salvarmos o elemento. Após isso salvamos e ativamos a mesma.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.013.png)

Na tabela ZTB\_TEST, podemos ativa-la e será necessário preencher as seguintes lacunas:

Categoria Dado:  com normalmente APPL0 para tabela transparente;

Ctg.Tamanho: Que dita quantos registro pode chegar a haver nesta tabela, neste caso “0” para quantidade de registro de 0 até 7.100.

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.014.png)

Mach code da Ctg.Tamanho

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.015.png)

Logo após o preenchimento, basta salvar e está ativa a tabela. Não obstante podendo relatar algum erro, como o apresentado a seguir.

` `![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.016.png)

Para resolver o erro de ampliação é necessário ir em Suplementos e em Categoria de ampliação... nela selecionar que a tabela não é ampliável e está resolvido o erro, podendo ser ativa agora.    

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.017.png)

![](Aspose.Words.43df68b3-daad-4b0e-a6c6-9abe72ab621d.018.png)
