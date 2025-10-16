#set document(
  title: "Study Notebook",
  author: "Siyuan Wang",
  description: [My study notes on all kinds of things.]
)

#set math.equation(numbering: "(1.1)", number-align: bottom, supplement: [Eq.])

#show math.equation: it => {
  if it.block and not it.has("label") [
    #counter(math.equation).update(v => v - 1)
    #math.equation(it.body, block: true, numbering: none)#label("nolabel")
  ] else {
    it
  }  
}

#title()
Siyuan Wang

#outline()

#include "Introduction to Quantum Mechanics/main.typ"
