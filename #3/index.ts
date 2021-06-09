// Usada a extensão Quokka no VSCode para uma melhor visualização
// 03. Aquecimento

function countNeg(a: Array<number>) {
  return a.filter(x => x < 0).length
}

console.log(countNeg([1, -3, -4, 3, 4, -5]))

function final(a: number, b: Array<number>) {
  return b.slice(b.length - a, b.length)
}

console.log(final(3, [2, 5, 4, 7, 9, 6]))

function iguais(a: number, b: number, c: number) {
  return a === b && c === a ? 3 :
    b === c || a === c || a === b ? 2 : 0
}

console.log(iguais(2, 3, 2))

function interior(a: Array<number>) {
  return a.slice(1, a.length - 1)
}

console.log(interior([1, 2, 3, 5, 7, 8]))

function gangorra(a: number, b: number, c: number, d: number) {
  return a * b === c * d ? 0 :
    (a > c && b < d || a < c && b > d) ? 1 : -1
}

console.log(gangorra(43, 23, 96, 12))

function min2(a: number, b: number) {
  return a < b ? a : b
}

console.log(min2(4, -1))

function min3(a: number, b: number, c: number) {
  return a < b && a < c ? a :
    b < a && b < c ? b : c
}

console.log(min3(2, 5, 4))

function soma2(a: number, b: number) {
  return a + b
}

console.log(soma2(-4, 6))


// 04. Operações básicas

function somaImpares(a: Array<number>): number {
  return a.filter(x => !(x % 2 === 0))
    .reduce((soma, x) => soma + x)
}

console.log(somaImpares([3, 2, 4, 6, 5, 7, 8, 0, 1]))

function max3(a: number, b: number, c: number): number {
  return a > b && a > c ? a :
    b > a && b > c ? b : c
}

console.log(max3(6, 7, 9))

function fatorial(a: number): number {
  return a < 2 ? 1 : a * fatorial(a - 1)
}

console.log(fatorial(5))

function elemento(a: number, b: Array<number>): number {
  return a < 0 ? b[b.length + a] : b[a]
}

console.log(elemento(-2, [2, 7, 3, 9]))

function pertence(a: number, b: Array<number>): boolean {
  return b.includes(a)
}

console.log(pertence(2, [3, 7, 4, 2]))

function total(a: Array<number>): number {
  return a.pop() ? 1 + total(a) : 0
}

console.log(total([5, 2, 4, 5, 6, 1]))

function maior(a: Array<number>): number {
  return a.reduce((maior, x) => maior < x ? x : maior)
}

console.log(maior([1, 2, 3, 1, 10]))

function corpo(a: Array<number>): Array<number> {
  return a.length < 2 ? [] : a.slice(0, a.length - 1)
}

console.log(corpo([1, 2, 3, 4]))

function divide(a: Array<number>, b: number): { tu: Array<number>, pla: Array<number> } {
  return { tu: a.slice(0, b), pla: a.slice(b, a.length) }
}

console.log(divide([1, 2, 3, 4], 2))

function uniao(a: Array<number>, b: Array<number>): Array<number> {
  return a.filter(x => x)
    .concat(b.filter(x => !a.includes(x)))
}

console.log(uniao([1, 2, 3, 4], [1, 2, 3, 1, 10]))

function intersec(a: Array<number>, b: Array<number>): Array<number> {
  return a.filter(x => b.includes(x))
}

console.log(intersec([3, 6, 5, 7], [9, 7, 5, 1, 3]))

function splitints(a: Array<number>): { tu: Array<number>, pla: Array<number> } {
  return { tu: a.filter(x => !(x % 2 == 0)), pla: a.filter(x => x % 2 === 0) }
}

console.log(splitints([1, 2, 3, 4, 5, 6, 7]))

function sublist(a: number, b: number, c: Array<number>): Array<number> {
  return a < 0 && b < 0 ? c.slice(c.length + a, c.length + b) :
    a < 0 ? c.slice(c.length + a, b) : b < 0 ? c.slice(a, c.length + b) :
      c.slice(a, b)
}

console.log(sublist(-10, -1, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

function paridade(a: Array<boolean>): boolean {
  return a.filter(x => x === true).length % 2 === 0
}

console.log(paridade([true, false, true, false, true]))



function euler1(a: number): number {
  let sum = 0
  for (let i = 1; i < a; i++) {
    if (i % 3 == 0 || i % 5 == 0) sum += i
  }

  return sum
}

console.log(euler1(1000))

