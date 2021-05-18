
const pessoas = [
  { nome: "Emanuel", idade: 21 }, 
  { nome: "Emanuel", idade: 21 }, 
  { nome: "Emanuel", idade: 21 }, 
  { nome: "Andre", idade: 30 }, 
  { nome: "Joao", idade: 40 },
  { nome: "Francisco", idade: 65 }, 
  { nome: "Claudia", idade:74}, 
  { nome: "Maria", idade: 19 }, 
  { nome: "Mateus", idade: 18 }
]

console.log("Pessoas Idosas:")
pessoas.map(pessoa => {
  if (pessoa.idade >= 60) 
    return console.log(pessoa.nome, pessoa.idade)
})

console.log("2 pessoas que começam com vogal e tem menos de 30 anos :")

var cont = 0
pessoas.map((pessoa, index) => {
  if (index >= 2) return
  const regex = /[aeiouAEIOU]/
  if (pessoa.nome[0].match(regex) && pessoa.idade < 30) 
    return console.log(pessoa.nome, pessoa.idade)
})