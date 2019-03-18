# flexpeak
Seleção Programador Jr Flex Peak

O sistema foi desenvolvido com Framework Back-end: Codeigniter. Onde foi criado dois controllers, um para as chamadas das views e outro para as funções do sistema. E um model para as consultas no banco. O Codeigniter trabalha com o modelo MVC, mas também deixa uma flexbilidade para o programador, e para mostrar isso fiz as requisições no sistema direto no Controller.
Para o Front-end utilizei o Framework: Bootstrap 4.

No menu superior tem opções:
>Cadastrar: Aluno, Curso e Professor.

>Listar: Alunos, Cursos e Professores.
 -Editar, Excluir.
 
>Listar os Alunos por Curso.
 -Editar, Excluir.
 
>Relatórios.
 -Aluno, nome, contendo curso e professor.
 -Cursos, nome e professor.
 -Professor, nome e data de nascimento.
 
 Para a opção de listar foi utilizado um Plug Jquery: DataTables.
 Para gerar PDF foi utilizado: Mpdf
O banco de dados encontra-se na pasta "extras"
