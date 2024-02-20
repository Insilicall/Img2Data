# Img2Data

O objetivo desse projeto é ser um *wrapper* do [WebPlotDigitizer](https://github.com/ankitrohatgi/WebPlotDigitizer), porém voltado exclusivamente para análise de imagens contendo planos cartesianos (chamadas no projeto original de *2D (X-Y) Plot*).
Como o projeto original é de uso geral, ele exige que o usuário faça diversas ações até conseguir o dado final, já nesse wrapper nós automatizamos os passos que o usuário teria que fazer manualmente, tornando o fluxo de uso muito mais simples.

## Como usar

Para se utilizar a aplicação basta inserir um *iframe* apontando para o arquivo **index.html**:

```html
<iframe id="img2data" src="./node_modules/@insilicall/img2data/index.html" style="height: 1024px; width: 1024px"></iframe>
```

## Contribuindo

Antes de subir qualquer alteração é importante que ela seja testada. Para isso, execute esse comando na raiz do projeto:

```sh
sh setup_dist.sh
```

Em seguida execute a extensão *Live Server* e abra [essa url](http://localhost:5500/test/). Se tudo estiver correto incremente o número da versão para que o deploy no NPM seja feito com sucesso.