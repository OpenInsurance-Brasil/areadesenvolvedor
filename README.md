# OpenInsurance Brasil

## O que é?

O Open Insurance, ou Sistema de Seguros Aberto, é a possibilidade de consumidores de 
produtos e serviços de seguros, previdência complementar aberta e capitalização 
permitirem o compartilhamento de suas informações entre diferentes sociedades 
autorizadas/credenciadas pela Susep, de forma segura, ágil, precisa e conveniente. 

Para entregar esses benefícios ao consumidor, o Open Insurance operacionaliza e 
padroniza o compartilhamento de dados e serviços por meio de abertura e integração 
de sistemas, com privacidade e segurança.

### Especificação

As APIs devem ser especificadas com a versão 3.0.0 da linguagem OpenAPI
(https://github.com/OAI/OpenAPI- Specification/blob/3.0.0/versions/3.0.0.md).

As especificações das APIs devem ser analisadas com a versão 5.9.0 do software livre e
de código aberto Spectral (https://github.com/stoplightio/spectral/tree/v5.9.0). A análise
DEVE ser feita com o conjunto de regras (ruleset) padrão desta versão do Spectral. O
resultado da análise não deve conter erros ou alertas.

É recomendado que a versão 3.0.25 do software livre e de código aberto Swagger
Codegen (https://github.com/swagger-api/swagger- codegen/tree/v3.0.25) seja utilizado
para gerar o código de clientes e também o código inicial de implementações das APIs a
partir de suas especificações. Recomenda-se que o código gerado seja analisado com o
intuito de identificar possíveis recursos da linguagem OpenAPI que foram utilizados nas
especificações, mas que não são adequadamente suportados pelo Swagger Codegen e,
possivelmente, por outros softwares que trabalham com especificações OpenAPI. Caso
isto ocorra, deve-se avaliar se não é possível alterar as especificações para não mais
fazer uso destes recursos.

Implementações de exemplo das APIs devem ser disponibilizadas. Os dados retornados
por elas não precisam ser dados reais e nem volumosos, pois o objetivo da
disponibilização é dar à Superintendência de Seguros Privados, aos implementadores e
aos consumidores das APIs mais um recurso para dirimir eventuais dúvidas acerca de
suas especificações e implementações. É recomendado que o código inicial de
implementações das APIs mencionado anteriormente seja complementado de forma a
constituir-se nas implementações de exemplo.

As informações disponibilizadas nos dicionários de dados devem ser consistentes com
as especificações OpenAPI associadas. Todos os endpoints das APIs implementados
devem ser previamente registrados no diretório de participantes.
Todos os endpoints registrados que retornem listas, caso os parâmetros sejam válidos,
devem retornar a lista associada, mesmo que uma seja lista vazia. Não é considerado um
retorno válido o erro 404, neste cenário, quando não houver a informação associada.


### Princípios

Os princípios abaixo norteiam as especificações e implementações das APIs do Open
Insurance.

#### Experiência do usuário
As especificações e implementações das APIs devem oferecer uma boa experiência para
os usuários, sejam eles implementadores ou consumidores das APIs.

#### Independência de tecnologia
As especificações das APIs devem ser independentes de tecnologia, podendo ser
implementadas e consumidas em diferentes linguagens e/ou plataformas tais como Java,
Java Script, Python e Windows, Linux, Android e iOS.

#### Segurança
Procedimentos e controles (assinaturas digitais, criptografia, protocolos de autenticação
e autorização, entre outros) devem ser adotados de forma a proteger os participantes do
Open Insurance, seus clientes, os consumidores das APIs e demais participantes do
ecossistema, observada a compatibilidade com a política de segurança cibernética da
sociedade participante.

#### Extensibilidade
No futuro, as APIs poderão ser evoluídas para atender a novos casos de uso e, portanto,
devem ser especificadas e implementadas de forma a permitir e facilitar extensões
como, por exemplo, novos endpoints, operações, parâmetros e propriedades.

#### Padrões abertos
Padrões abertos devem ser adotados sempre que possível.

#### APIs RESTful
As especificações das APIs devem atender às restrições do estilo arquitetural REST
sempre que possível.

#### ISO 20022
As respostas das APIs devem ter como base, sempre que possível, os elementos e
componentes de mensagem ISO 20022 (https://www.iso20022.org), os quais poderão
ser modificados, caso necessário, para deixar as respostas mais simples e/ou atender às
características locais, tal como implementado em diferentes jurisdições.

### Versionamento

As versões das especificações das APIs serão tipificadas como "major", "minor",
"patch" e "release candidate" de acordo com os critérios a seguir:

- I - major: inclui novas características da implementação, mudanças, correções a serem
incorporadas e que podem ser incompatíveis com versões anteriores, por exemplo,
v1.0.0 e v2.0.0;

- II - minor: pequenas mudanças nos elementos já existentes, com manutenção da
compatibilidade com as versões até a major imediatamente anterior, por exemplo,
v1.1.0 e v1.2.0;

- III - patch: esclarecimentos às especificações minor, não incluem alterações funcionais,
por exemplo, v1.1.1, v1.1.2; e

- IV - release candidate: versões de pré-lançamento de qualquer versão futura do tipo
patch, minor ou major, por exemplo, v1.0.0-rc e v1.0.0-rc2.
A Estrutura Responsável pela Governança do Open Insurance de que trata o art. 29, §2º, da Resolução CNSP nº 415, de 2021, poderá lançar novas versões dos tipos minor,
patch e release candidate das APIs. Entretanto, versões do tipo major só poderão ser
lançadas com a anuência da Susep, o qual será responsável por definir o cronograma de
implantação de versões major.

Por fim, credenciais de acesso associadas às APIs devem ser agnósticas às suas versões.
