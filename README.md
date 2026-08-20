# Sistema de Gerenciamento de Biblioteca #
<br>

<h2> Sobre o Projeto </h1>

Este projeto consiste em um banco de dados relacional para gerenciar uma biblioteca, desenvolvido durante meus estudos em Banco de Dados e cursos relacionados. Ele armazena informações sobre autores, categorias, livros, clientes e empréstimos, permitindo controle de acervo e acompanhamento de retiradas e devoluções. Atualizando sempre que possível.


<h2> Objetivos </h2>
- Praticar a modelagem de dados e a criação de tabelas com "Primary Keys" e "Foreign Keys". <br>
- Desenvolver consultas SQL para gestão de acervo e histórico de empréstimos. <br>
- Criar um portfólio prático para demonstrar habilidades em SQL e modelagem de dados.
<br>

<h2> Estrutura do Banco de Dados </h2>

O banco é composto por 5 tabelas principais:

- **autores**: Armazena informações sobre os autores (id, nome, nacionalidade, data_nascimento).
- **categorias**: Classifica os livros por gênero (id, nome, descricao).
- **livros**: Contém o acervo da biblioteca (id, titulo, autor_id, categoria_id, ano_publicacao, editora, quantidade_total, quantidade_disponivel).
- **clientes**: Cadastro dos usuários da biblioteca (id, nome, email, telefone, endereco, data_cadastro).
- **emprestimos**: Registra retiradas, devoluções e status (id, cliente_id, livro_id, data_emprestimo, data_devolucao_prevista, data_devolucao_real, situacao).

**Relacionamentos:**
- `livros` → `autores` (1 autor tem muitos livros)
- `livros` → `categorias` (1 categoria tem muitos livros)
- `emprestimos` → `clientes` (1 cliente pode ter muitos empréstimos)
- `emprestimos` → `livros` (1 livro pode ser emprestado muitas vezes)
<br>

<h2> Principais Consultas </h2>

Aqui estão algumas consultas que demonstram o funcionamento do sistema:

### Listar todos os livros com seus autores e categorias:
```sql
SELECT
    l.titulo AS "Livro",
    a.nome AS "Autores",
    c.nome AS "Categoria"
    
FROM livros l
JOIN autores a ON l.autor_id = a.id
JOIN categorias c ON l.categoria_id = c.id;
```

<br> 
<h2> Verificar empréstimos ativos com cliente e livro: </h2>

```sql
SELECT
  c.nome AS 'Cliente',
  l.titulo AS 'Livro',
  e.data_devolucao_prevista

FROM emprestimos e
JOIN clientes c ON e.cliente_id = c.id
JOIN livros l ON e.livro_id = l.id
WHERE e.situacao = 'atrasado';
```

<br>
<h2> Identificar livros em atraso:</h2>

```sql
SELECT
  c.nome AS 'Cliente',
  l.titulo AS 'Livro',
  e.data_devolucao_prevista AS 'Data prevista'

FROM emprestimos e
JOIN clientes c ON e.cliente_id = c.id
JOIN livros l ON e.livro_id = l.id
WHERE e.situacao = 'atrasado';
```

<br>
<h2> Livros mais emprestados:</h2>

```sql
SELECT
  l.titulo,
  COUNT(e.id) AS 'total_emprestimos'

FROM livros l
JOIN emprestimos e ON l.id = e.livro_id
GROUP BY l.id
ORDER BY total_emprestimos DESC;
```

<br>

<h2> Softwares e Linguagens:</h2>
• MySQL<br>
• SQL

<br>
<h2> Quer ver esse banco de dados rodando? </h2>

Fique à vontade, o projeto está aberto para testes.

**O que você precisa:**
- Um servidor MySQL.

**O que fazer:**
1. Crie uma base chamada `biblioteca`.
2. Rode o arquivo `biblioteca.sql`.
3. Depois, é só sair testando as consultas. Eu deixei algumas prontas no próprio script, mas você pode criar as suas também.

Se encontrar algum problema ou tiver sugestões, me avise. Estou sempre aberto a aprender com quem também está aprendendo.


<h2>👨‍💻 Sobre o Autor</h2>
Estudante de Tecnologia em Banco de Dados, em transição de carreira para a área de dados. Este projeto faz parte do meu processo de aprendizado e construção de portfólio.<br><br>

🔗 LinkedIn: https://www.linkedin.com/in/antonio-isac-411031216/ <br>
📧 E-mail: antonio.sgbl@gmail.com

