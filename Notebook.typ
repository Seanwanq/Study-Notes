#import "@preview/equate:0.3.2": equate

#show: equate.with(breakable: true, number-mode: "label")

#set heading(numbering: "1.")

#show heading.where(level:1): it => {
  counter(math.equation).update(0)
  it
}

#set math.equation(numbering: n => {
  numbering("(1.1)", counter(heading).get().first(), n)
})

#set math.equation(number-align: bottom, supplement: [Eq.])

#set document(
  title: "Study Notebook",
  author: "Siyuan Wang",
  description: [My study notes on all kinds of things.]
)


#text(weight: "bold", size: 20pt)[Study Notebook]

Siyuan Wang

#outline()

#include "Introduction to Quantum Mechanics/main.typ"
