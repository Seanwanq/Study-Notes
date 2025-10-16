#import "@preview/physica:0.9.6": *
#let hbar = sym.planck

== Quantum Mechanics in Three Dimensions

3D Schrodinger equation:
$
  i hbar pdv(Psi, t) &= hat(H) Psi\
  i hbar pdv(Psi, t) &= - hbar^2 / (2m) nabla^2 Psi + V Psi,
$
with $bold(p) -> -i hbar nabla$, $nabla^2 equiv pdv(,x,2) + pdv(,y,2) + pdv(,z,2)$, the Laplacian.

The normalization condition:
$
  integral abs(Psi)^2 dd(bold(r),3) = 1.
$

If $V$ is independent of time, we can separate variables:
$
  Psi_n (bold(r), t) = psi_n (bold(r)) e^(-i E_n t slash hbar),
$
and 
$
  -hbar^2/(2m) nabla^2 psi + V psi = E psi.
$
The general solution:
$
  Psi(bold(r), t) = sum_n c_n psi_n (bold(r)) e^(-i E_n t slash hbar).
$

=== Spherical Coordinates

$V$ is only dependent on $r$: $V = V(r)$.

$
  nabla^2 = 1/r^2 pdv(,r) (r^2 pdv(,r)) + 1/(r^2 sin theta) pdv(,theta) (sin theta pdv(, theta)) + 1/(r^2 sin^2 theta) (pdv(, phi.alt, 2)).
$
The time-independent part of SE:
$
  -hbar^2/(2m) [1/r^2 pdv(,r) (r^2 pdv(psi,r)) + 1/(r^2 sin theta) pdv(, theta) (sin theta pdv(psi, theta)) + 1/(r^2 sin^2 theta) (pdv(psi, phi.alt, 2))] + V psi = E psi.
$

#image("./image.png", width: 50%)

We only look for such kind of solutions:
$
  psi(r, theta, phi.alt) = R(r) Y(theta, phi.alt).
$
$
  -hbar^2/(2m) [1/r^2 pdv(,r)  (r^2 pdv(R(r)Y(theta, phi.alt), r)) + 1/(r^2 sin theta) pdv(, theta) (sin theta pdv(R(r) Y(theta, phi.alt), theta)) + 1/(r^2 sin^2 theta) (pdv((R(r) Y(theta, phi.alt)), phi.alt, 2))] + V R(r) Y(theta, phi.alt)\ 
  = E R(r) Y(theta, phi.alt)\
  -hbar^2/(2m) [Y/r^2 pdv(,r) (r^2 pdv(R,r)) + R/(r^2 sin theta) pdv(, theta) (sin theta pdv(Y, theta)) + R/(r^2 sin^2 theta) (pdv(Y, phi.alt, 2))] + V R Y = E R Y\

  -hbar^2/(2m) [1/(r^2 R) pdv(, r) (r^2 pdv(R, r)) + 1/Y 1/(r^2 sin theta) pdv(, theta) (sin theta pdv(Y, theta)) + 1/Y 1/(r^2 sin^2 theta) (pdv(Y, phi.alt, 2))] + V = E\

  1/R pdv(, r) (r^2 pdv(R, r)) + 1/Y 1/(sin theta) pdv(, theta) (sin theta pdv(Y, theta)) + 1/Y 1/(sin^2 theta) (pdv(Y, phi.alt, 2)) - (2m r^2)/hbar^2 (V(r) - E) = 0\

  underbrace({1/R pdv(, r) (r^2 pdv(R, r)) - (2m r^2)/hbar^2 (V(r) - E)}, "depend on "r) + 1/Y underbrace({ 1/(sin theta) pdv(, theta) (sin theta pdv(Y, theta)) + 1/(sin^2 theta) pdv(Y, phi.alt, 2)}, "depend on "theta "," phi.alt) = 0\
$

The left part and the right part must both be constant and equal.

Let this constant be $l(l+1)$:

$
  1/R pdv(,r) (r^2 pdv(R, r)) - (2m r^2)/hbar^2 (V(r) - E) = l(l+1),
$<threeDTISEr>
$
  1/Y { 1/(sin theta) pdv(, theta) (sin theta pdv(Y, theta)) + 1/(sin^2 theta) pdv(Y, phi.alt, 2)} = -l(l+1).
$<threeDTISEangular>

@threeDTISEangular is the angular part.
$
  sin theta pdv(, theta) (sin theta pdv(Y, theta)) + pdv(Y, phi.alt, 2) + l(l+1) sin^2 theta Y = 0
$

By solving the separable form of $Y$: $Y(theta, phi.alt) = Theta(theta) Phi(phi.alt)$,
$
  {1/Theta [sin theta dv(, theta) (sin theta dv(Theta, theta))] + l(l+1) sin^2 theta} + 1/Phi dv(Phi, phi.alt, 2) = 0
$
 
Again, the first part and the second part must both be constant and equal ($m^2$).

$
  1/Theta [sin theta dv(, theta) (sin theta dv(Theta, theta))] + l(l+1) sin^2 theta = m^2
$ <angulartheta>

$
  1/Phi dv(Phi, phi.alt, 2) = -m^2
$ <angularphi>

The solution of @angularphi is
$
  dv(Phi, phi.alt, 2) = -m^2 Phi => Phi(phi.alt) = e^(i m phi.alt), m in RR.
$
Because $Phi(phi.alt + 2pi) = Phi(phi.alt)$, we must let $m$ be an integer.

The solution of @angulartheta is
$
  Theta(theta) = A P_l^m (cos theta),
$
where $P_l^m$ is the associated Legendre function
$
  P_l^m (x) equiv (-1)^m (1- x^2)^(m slash 2) (dv(,x))^m P_l (x)\
  P_l (x) equiv 1/(2^l l!) (dv(,x))^l (x^2 - 1)^l.
$
$P_l (x)$ is the $l$th Legendre polynomial. $l$ must be a non-negative integer. If $m>l$, we can know from above that $P_l^m (x) = 0$. so
$
  l = 0, 1, 2, ...;\
  m = -l, -l+1, ..., -1, 0, 1, ..., l-1, l.
$

The volume element in spherical coordinates is
$
  dd(r,3) = r^2 sin theta dd(r) dd(theta) dd(phi.alt) = r^2 dd(r) dd(Omega), "where" dd(Omega) equiv sin theta dd(theta) dd(phi.alt).
$

The normalization condition
$
  integral abs(psi)^2 r^2 sin theta dd(r) dd(theta) dd(phi.alt) = 
  integral abs(R)^2 r^2 dd(r) integral abs(Y)^2 dd(Omega) = 1.
$
And we can normalize it separately
$
  integral_0^oo abs(R)^2 r^2 dd(r) = 1;\
  integral_0^pi integral_0^2pi abs(Y)^2 sin theta dd(theta) dd(phi.alt) = 1.
$

The normalized angular wave function
$
  Y_l^m (theta, phi.alt) = sqrt((2l+1)/(4pi) (l-m)!/(l+m)!) e^(i m phi.alt) P_l^m (cos theta).
$<sphericalharmonic>
They are orghogonal
$
  integral_0^pi integral_0^(2pi) [Y_l^m (theta, phi.alt)]^* [Y_l'^m' (theta, phi.alt)] sin theta dd(theta) dd(phi.alt) = delta_(l l') delta_(m m').
$

For the $r$ part @threeDTISEr:
$
  1/R pdv(,r) (r^2 pdv(R, r)) - (2m r^2)/hbar^2 (V(r) - E) = l(l+1),
$
let $u(r) equiv r R(r)$, $=>$
$
  R = u slash r, dv(R,r) = [r (dv(u, r))-u] slash r^2, dv(,r)[r^2 (dv(R,r))] = r dv(u,r,2) =>
$ 
$
  -hbar^2/(2m) dv(u, r, 2) + [V + hbar^2/(2m) (l(l+1))/r^2] u = E u.
$
This is just the form of 1D SE (time-independent), with an effective potential
$
  V_"eff" (r) = V(r) + underbrace(hbar^2/(2m) (l (l+1)) / r^2, "centrifugal term").
$
The centrifugal term tends to throw the particle away from the origin.

$u$ is like a wave function in 1D,
$
  integral_0^oo abs(u)^2 dd(r) = 1.
$













