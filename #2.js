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