Group.destroy_all

Question.destroy_all

Option.destroy_all

Payment.destroy_all

Group.create(
    descripition: 'Contextualização',
    )
Question.create(
    descripition: 'Sobre o que é o negócio?',
    group_id: 1
)
Question.create(
    descripition: 'Qual é o ramo de negócio de sua empresa?',
    group_id: 1
)
Question.create(
    descripition: 'Qual problema ou demanda seu negócio irá atender?',
    group_id: 1
)
Question.create(
    descripition: 'Quais são os principais produtos e/ou serviços?',
    group_id: 1
)
Question.create(
    descripition: 'Como serão oferecidos esses produtos e/ou serviços?',
    group_id: 1
)
Question.create(
    descripition: 'Onde está ou será localizada a empresa?',
    group_id: 1
)
Question.create(
    descripition: 'Quais as ameaças previsíveis? Informe o máximo de negatividades possíveis.',
    group_id: 1
)

Group.create(
    descripition: 'Sobre o negócio'
)
Question.create(
    descripition: 'Qual é a missão da empresa?',
    group_id: 2
)
Question.create(
    descripition: 'Qual é a visão do negócio?',
    group_id: 2
)
Question.create(
    descripition: 'Qual é o objetivo principal da empresa? ',
    group_id: 2
)
Question.create(
    descripition: 'Quais são as forças do négocio?',
    group_id: 2
)
Question.create(
    descripition: 'Quais são as fraquezas do négocio?',
    group_id: 2
)

Group.create(
    descripition: 'Processos produtivos'
)
Question.create(
    descripition: 'Como será feito o processo de compra?',
    group_id: 3
)
Question.create(
    descripition: 'Como será feito o processo de venda? Como será feita a entrega?',
    group_id: 3
)
Question.create(
    descripition: 'Como será feito o processo recebimento?',
    group_id: 3
)
Question.create(
    descripition: 'Como será feito o processo de pagamento?',
    group_id: 3
)
Question.create(
    descripition: 'Como será feito o processo de produção?',
    group_id: 3
)

Group.create(
    descripition: 'Recursos necessários'
)
Question.create(
    descripition: 'Quais são os materiais necessários para produzir?',
    group_id: 4
)
Question.create(
    descripition: 'Qual são as tecnologias utilizadas?',
    group_id: 4
)
Question.create(
    descripition: 'Qual é espaço necessário para alocar toda a estrutura?',
    group_id: 4
)

Group.create(
    descripition: 'Competitividade e ambiente de negócio'
)
Question.create(
    descripition: 'O produto ou serviço tem algum diferencial competitivo em relação a qualidade? Quais são eles?',
    group_id: 5
)
Question.create(
    descripition: 'O produto ou serviço tem algum diferencial competitivo em relação a tecnologia utilizada? Quais são eles?',
    group_id: 5
)
Question.create(
    descripition: 'O produto ou serviço tem algum diferencial competitivo em relação ao custo de produção?',
    group_id: 5
)
Question.create(
    descripition: 'O produto ou serviço tem algum diferencial competitivo em relação ao preço?',
    group_id: 5
)
Question.create(
    descripition: 'Quais outros diferenciais competitivo em relação aos concorrentes?',
    group_id: 5
)
Question.create(
    descripition: 'Qual o gênero do público do seu produto ou serviço?',
    group_id: 5
)

Group.create(
    descripition: 'Marketing'
)
Question.create(
    descripition: 'Pretende divulgar em mídias sociais ou online? Cite elas, qual orçamento mensal e a duração.',
    group_id: 6
)
Question.create(
    descripition: 'Pretende divulgar em mídias impressas? Cite elas, qual orçamento mensal e a duração?',
    group_id: 6
)
Question.create(
    descripition: 'Descreva como um todo como serão utilizadas as estratégias de divulgação e como serão distribuídas as ações de marketing mensalmente?',
    group_id: 6
)

Group.create(
    descripition: 'Sustentabilidade financeira'
)
Question.create(
    descripition: 'Qual é o montante de capital a ser investido?',
    group_id: 7
)
Question.create(
    descripition: 'Tem ideia de qual será o faturamento mensal?',
    group_id: 7
)
Question.create(
    descripition: 'Que lucro espera obter do negócio? (Em porcentagem. Ex.: para 30% colocar 30)',
    group_id: 7
)
Question.create(
    descripition: 'Em quanto tempo espera que o capital investido retorne? (meses)',
    group_id: 7
)

Group.create(
    descripition: 'Precificação'
)
Question.create(
    descripition: 'Qual o prazo onde você pretende obter o maior lucro?',
    group_id: 8
)
Option.create(
      description: 'Curto prazo',
      question_id: 34
)
Option.create(
    description: 'Médio prazo',
    question_id: 34
)
Option.create(
    description: 'Longo prazo',
    question_id: 34
)
Question.create(
    descripition: 'A formação de preço será feita com base:',
    group_id: 8
)
Option.create(
    description: 'Com base no mercado',
    question_id: 35
)
Option.create(
    description: 'Combinação de custo e mercado',
    question_id: 35
)

Group.create(
    descripition: 'Vendas'
)
Question.create(
    descripition: 'Quais os fatores estratégicos que possuem diferenciais que contribuirão para gerar vendas no seu negócio?',
    group_id: 9
)
Option.create(
    description: 'Marketing de curto prazo',
    question_id: 36
)
Option.create(
    description: 'Marketing de longo prazo',
    question_id: 36
)
Option.create(
    description: 'Preços',
    question_id: 36
)
Option.create(
    description: 'Custos',
    question_id: 36
)
Question.create(
    descripition: 'Como funcionará o processo de pré-venda?',
    group_id: 9
)
Option.create(
    description: 'Marketing digital',
    question_id: 37
)
Option.create(
    description: 'Inbound marketing',
    question_id: 37
)
Option.create(
    description: 'Visitas presenciais',
    question_id: 37
)
Option.create(
    description: 'Contato telefônico',
    question_id: 37
)
Option.create(
    description: 'Parcerias',
    question_id: 37
)
Question.create(
    descripition: 'Como funcionará o processo de venda?',
    group_id: 9
)
Option.create(
    description: 'Internet',
    question_id: 38
)
Option.create(
    description: 'Loja física',
    question_id: 38
)
Option.create(
    description: 'Vendedor Externo',
    question_id: 38
)
Question.create(
    descripition: 'Como funcionará o processo de pós-venda?',
    group_id: 9
)
Option.create(
    description: 'Contato pessoal',
    question_id: 39
)
Option.create(
    description: 'Telefone',
    question_id: 39
)
Option.create(
    description: 'E-mail',
    question_id: 39
)
Question.create(
    descripition: 'Quais os diferenciais da equipe de vendas?',
    group_id: 9
)
Option.create(
    description: 'Formação',
    question_id: 40
)
Option.create(
    description: 'Capacidade de persuasão',
    question_id: 40
)
Question.create(
    descripition: 'Quais características do processo de vendas podem ser considerados pontos fracos?',
    group_id: 9
)
Question.create(
    descripition: 'Qual é a estratégia  da empresa para se manter competitiva em situações onde a curva de oferta e demanda seja desfavorável?',
    group_id: 9
)
Question.create(
    descripition: 'Quais pontos forte e fracos da sua força de vendas?',
    group_id: 9
)
Question.create(
    descripition: 'Quais as oportunidade e ameaças para sua força de vendas?',
    group_id: 9
)
Question.create(
    descripition: 'Faça uma análise da sua força de vendas confrontando suas forças com as oportunidades e suas fraquezas com as ameaças. Descreva sua análise.',
    group_id: 9
)

Group.create(
     descripition: 'Recursos Humanos'
)
Question.create(
    descripition: 'Quem são as pessoas chaves que irão atuar no negócio?',
    group_id: 10
)
Question.create(
    descripition: 'Quais são os principais cargos para o seu negócio fluir?',
    group_id: 10
)
Question.create(
    descripition: 'Quais os conhecimentos e as habilidades necessárias para as pessoas que desempenharão os cargos definidos?',
    group_id: 10
)
Question.create(
    descripition: 'O que cada pessoa executará efetivamente na empresa?',
    group_id: 10
)
Question.create(
    descripition: 'Para essas funções existe algum tipo de treinamento, capacitação ou algum tipo incentivo?',
    group_id: 10
)
Question.create(
    descripition: 'Existe alguma estratégia para manter a competitividade das pessoas com foco na competitividade do negócio?',
    group_id: 10
)

Payment.create(
    descrition: 'À vista',
    installment: 1,
    firstPayNow: TRUE
)
Payment.create(
    descrition: '30 dias direto',
    installment: 1,
    firstPayNow: FALSE
)
Payment.create(
    descrition: '1 + 30 dias',
    installment: 2,
    firstPayNow: TRUE
)
Payment.create(
    descrition: '1 + 30 + 60 dias',
    installment: 3,
    firstPayNow: TRUE
)
Payment.create(
    descrition: '1 + 30 + 60 + 90 dias',
    installment: 4,
    firstPayNow: TRUE
)
Payment.create(
    descrition: '30 + 60 dias',
    installment: 2,
    firstPayNow: FALSE
)
Payment.create(
    descrition: '30 + 60 + 90 dias',
    installment: 3,
    firstPayNow: FALSE
)