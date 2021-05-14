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

Essa tabela foi mostrada no video [Lambda Calculus - Fundamentals of Lambda Calculus & Functional Programming in JavaScript](https://www.youtube.com/watch?v=NWkinJJtfQg)

---
