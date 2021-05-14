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

``` javascript
// Atividade 2
// Extensão Quokka usada no VSCode

let x

// Currying
// λa.a
// JS I(I) === I
const I = a => a
x = I(1)
x

// λab.a
// JS K = a => b => a
const K = a => b => a
x = K(1)(2)
x

// λab.b
// JS KI = a => b => b
const KI = a => b => b
x = KI(1)(2)
x

// λfab.fba
// JS C = f => a => b => f(b)(a)
const C = f => a => b => f(b)(a)
x = C(K)(1)(2)
x
x = C(KI)(1)(2)
x

// Boolean
// TRUE ? PRI : ULT
// FALSE ? PRI : ULT
const T = K
const F = KI
T.inspect = () => "True (K)"
F.inspect = () => "False (KI)"
T
F

// λp.pFT
// JS NOT = a => a(F)(T)
const NOT = a => a(F)(T)
r = NOT(F)
r

// λab.abF ou λab.aba
// JS AND = a => b => a(b)(F)
const AND = a => b => a(b)(F)
x = AND(T)(F)
x

// λab.aTb ou λab.aab
// JS OR = a => b => a(T)(b)
const OR = a => b => a(T)(b)
x = OR(T)(F)
x
```