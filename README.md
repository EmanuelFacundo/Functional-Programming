# Functional Programming

> Disciplina cursada no semestre 2021.1

## Atividades

---

> **#1. Pesquisar sobre as principais características das linguagens funcionais, fazer um resumo sobre o que você achou mais interessante.**

As linguagens funcionais foram fortemente inspiradas no Lambda Calculus, que basicamente é sobre como avaliar e definir funções, nós temos definido a seguinte notação ``` λa.a ``` onde **λ** significa a definição de uma função anónima que recebe um único parâmetro **a** e retorna ele mesmo, isso é chamado de abstração lambda, essa notação por exemplo é uma função identidade. Tudo é feito a partir de constantes e de definições de funções, existem varias combinações de funções livres de variáveis.

### **Tabela de Combinações**

Sym. Bird | λ-Calculus | Use
----------|------------|----
I Idiot   | ```λa.a``` | Identity
M MockingBird | ```λf.ff``` | Self-Application
K Kestrel | ```λab.a``` | First
KI Kite | ```λab.b``` = KI = CK | Second
C Cardinal | ```λfab.fba``` | Reverse Arguments
B Bluebird | ```λfga.f(ga)``` | 1 ← 1 Composition
Tₕ Thush | ```λaf.fa``` = CI | Hold an Argument
V Vireo | ```λabf.fab``` = BCT | Hold a Pair of Arguments
B Blackbird | ```λfgab.f(gab)``` = BBB | 1 ← 2 Composition

### **Church Encodings: Booleans**

Sym. | Name | λ-Calculus | Use
-----|------|------------|----
  T  | True | ```λab.a```| Encoding for True
  F  | False| ```λab.b```| Encoding for False
  -- | Not  | ```λp.pFT```| Negation
  -- | And  | ```λpq.pqF``` or ```λpq.pqp```| Conjunction
  -- | Or   | ```λpq.pTq``` or ```λpq.ppq```| Disjunction
  -- | BEQ  | ```λpq.pq(NOT q)```| Equality

Tabelas foram mostradas no video [Lambda Calculus - Fundamentals of Lambda Calculus & Functional Programming in JavaScript](https://www.youtube.com/watch?v=NWkinJJtfQg)

---

> **#2. Assista ao vídeo sobre introdução ao cálculo lambda, faça o código junto com o vídeo.** 

**Resposta**

* [![](https://img.shields.io/badge/TypeScript-3178C6?style=flat&logo=typescript&logoColor=white)](https://github.com/EmanuelFacundo/Functional-Programming/blob/main/%232/index.js)

> **#3 Faça as questões das categorias 03 e 04 do site: https://github.com/senapk/funcional_arcade .**

**Respostas**
 
* [![](https://img.shields.io/badge/Haskell-5D4F85?style=flat&logo=haskell&logoColor=999999)](https://github.com/EmanuelFacundo/Functional-Programming/blob/main/%233/main.hs) 
* [![](https://img.shields.io/badge/TypeScript-3178C6?style=flat&logo=typescript&logoColor=white)](https://github.com/EmanuelFacundo/Functional-Programming/blob/main/%233/index.ts)

> **#4. Faça as questões das categorias 05 do site: https://github.com/senapk/funcional_arcade**

**Repostas**
* [![](https://img.shields.io/badge/Haskell-5D4F85?style=flat&logo=haskell&logoColor=999999)](https://github.com/EmanuelFacundo/Functional-Programming/blob/main/%234/main.hs)
