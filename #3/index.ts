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

console.log(min2(4,-1))

function min3(a: number, b: number, c: number) {
  return a < b && a < c ? a : 
    b < a && b < c ? b : c
}

console.log(min3(2,5,4))

function soma2(a: number, b: number) {
  return a + b
}

console.log(soma2(-4,6))
