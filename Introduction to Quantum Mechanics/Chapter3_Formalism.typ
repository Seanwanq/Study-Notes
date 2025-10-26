#import "@preview/physica:0.9.6": *
#let hbar = sym.planck.reduce

== Formalism

=== Vectors and Operators

Bases can be different in Hilbert space. For a vector $ket(S(t))$, for the basis of position eigenfunctions:
$ Psi(x, t) = braket(x, S(t)), $
in the basis of momentum eigenfunctions:
$ Phi(p, t) = braket(p, S(t)), $
in the basis of energy eigenfunctions (supposing discrete spectrum):
$ c_n (t) = braket(n, S(t)). $

So there are 3 different ways of identifying the same vector $ket(S(t))$:
$
  ket(S(t)) & -> integral Psi(y, t) delta(x-y) dd(y) = integral Phi(p, t) 1/sqrt(2 pi hbar) e^(i p x slash hbar) dd(p) \
            & = sum c_n e^(-i E_n t slash hbar) psi_n(x).
$

Here is to understand:
$
  ket(S(t)) = braket(x, S(t)) ket(x) = integral Psi(x, t) ket(x) dd(x),
$
$
  ket(S(t)) = braket(p, S(t)) ket(p) = integral Phi(p, t) ket(p) dd(p),
$
$
  ket(S(t)) = braket(n, S(t)) ket(n) = sum_n c_n (t) ket(n),
$

and in Chapter 3.3.1 Continuous Spectra, we have
$
  g_y (x) = delta(x - y),
$
$
  f_p (x) = 1/sqrt(2 pi hbar) e^(i p x slash hbar),
$
and in Chapter 2.1 Stationary States we have the energy eigenfunctions
$
  Psi(x, t) = sum_(n=1)^oo c_n psi_n (x) e^(-i E_n t slash hbar).
$
So that's all we need for the above conclusion.

And
$
  Phi(p, t) & = braket(p, S(t)) \
            & = braket(p, (integral dd(x) ketbra(x)), S(t)) \
            & = integral braket(p, x) braket(x, S(t)) dd(x) \
            & = integral braket(p, x) Psi(x, t) dd(x) \
            & = integral braket(x, p)^* Psi(x, t) dd(x) \
            & = integral f_p (x)^* Psi(x, t) dd(x) \
  Phi(p, t) & = 1/sqrt(2 pi hbar) integral e^(-i p x slash hbar) Psi(x, t) dd(x).
$

Also
$
  Psi(x, t) = 1/sqrt(2 pi hbar) integral e^(i p x slash hbar) Phi(p, t) dd(p).
$

To project a vector $ket(alpha)$ onto a basis $ket(e_n)$:
$ ket(alpha) = sum_n braket(e_n, alpha) ket(e_n), $
where $braket(e_n, alpha) = a_n$.

Operators can transform one vector into another
$ ket(beta) = hat(Q) ket(alpha) $
be represented as
$
  braket(e_m, hat(Q), e_n) equiv Q_(m n).
$
Hence
$
  b_m & = braket(e_m, beta) = braket(e_m, hat(Q), alpha) \
      & = sum_n a_n braket(e_m, hat(Q), e_n) = sum_n Q_(m n) a_n.
$

For the Hamiltonian $H = mat(h, g; g, h)$, with $ket(1) = mat(1; 0;)$ and $ket(2) = mat(0; 1;)$. Task: solving the time-dependent Schrodinger equation:
$
  i hbar dv(, t) S(t) = hat(H) ket(S(t))
$
with the initial condition $ket(1)$. Consider the time-independent part:
$
  hat(H) ket(s) = E ket(s).
$
$
  mat(h, g; g, h) ket(s) = E ket(s)\
  mat(h, g; g, h) ket(s) - mat(E, 0; 0, E) ket(s) = 0.
$
$
  det mat(h-E, g; g, h-E) = 0 => (h-E)^2 - g^2 = 0,\
  E_plus.minus = h plus.minus g.
$

The eigenvalues are $E_plus = h + g$ and $E_minus = h - g$.

And to calculate the eigenfunctions $ket(s) = mat(alpha; beta;)$:
$
  mat(h, g; g, h) mat(alpha; beta;) = (h plus.minus g) mat(alpha; beta;)\
  mat(h alpha + g beta; g alpha + h beta) = mat(h alpha plus.minus g alpha; h beta plus.minus g beta),\
  h alpha + g beta = (h plus.minus g) alpha => beta = plus.minus alpha
$
So the normalized eigenfunctions are
$
  ket(s_plus.minus) = 1/sqrt(2) mat(1; plus.minus 1;).
$
Then the initial state is
$
  ket(S(0)) = mat(1; 0;) = 1/sqrt(2) (ket(s_+) + ket(s_-)).
$
(Here we've changed the base of $ket(S)$ with the help of Hamiltonian, so that we can add time evolution. $hat(H)$ is just the case of $hat(Q)$).

So
$
  ket(S(t)) & = 1/sqrt(2) [e^(-i (h + g) t slash hbar) ket(s_+) + e^(-i (h - g) t slash hbar) ket(s_-)] \
            & = 1/2 e^(-i h t slash hbar) [e^(-i g t slash hbar) mat(1; 1;) + e^(i g t slash hbar )mat(1; -1;)] \
            & = 1/2 e^(-i h t slash hbar) mat(
                e^(0i g t slash hbar) + e^(i g t slash hbar);
                e^(-i g t slash hbar) - e^(i g t slash hbar)
              ) \
            & = e^(-i h t slash hbar) mat(cos(g t slash hbar); -i sin (g t slash hbar)).
$

For position & momentum

$ hat(x) -> cases(x "(in position space)", i hbar pdv(, p) "(in momentum space)") $

$ hat(p) -> cases(p "(in momentum space)", -i hbar pdv(, x) "(in position space)") $

The projection operator onto the one-dimensional subspace spanned by $ket(alpha)$
$ hat(P) equiv ketbra(alpha) $
picks out the portion align with $ket(alpha)$ from other vectors.

$
  sum_n ketbra(e_n) = 1.
$

For the previous example:
$
  ket(e_0) = 1/sqrt(2) mat(1; 1), ket(e_1) = 1/sqrt(2) mat(1; -1), ket(alpha) = mat(1; 0),\
  => a = b = 1/sqrt(2).
$

For continuous case
$
  integral ketbra(e_z) dd(z) = 1.
$

Power series expansion:
$
        e^hat(Q) & equiv 1 + hat(Q) + 1/2 hat(Q)^2 + 1/3! hat(Q)^3 + ... \
  1/(1 - hat(Q)) & equiv 1 + hat(Q) + hat(Q)^2 + hat(Q)^3 + hat(Q)^4 + ... \
  ln(1 + hat(Q)) & equiv hat(Q) - 1/2 hat(Q)^2 + 1/3 hat(Q)^3 - 1/4 hat(Q)^4 + ...
$

$
  braket(x, hat(x), S(t)) & = "action of position operator in" x "basis" = x Psi(x, t) \
  braket(p, hat(x), S(t)) & = "action of position operator in" p "basis" = i hbar pdv(Phi, p).
$

$
  braket(p, hat(x), S(t)) & = integral hat(x) Psi(x, t) braket(p, x) dd(x) \
                          & = integral x Psi(x, t) 1/sqrt(2 pi hbar) e^(-i p x slash hbar) dd(x) \
                          & = i hbar pdv(, p) integral (e^(-i p x slash hbar)) / (sqrt(2 pi hbar)) Psi(x, t) dd(x) \
                          & = i hbar pdv(, p) Phi(p, t).
$
