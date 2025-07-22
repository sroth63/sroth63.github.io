#let gs = $gt.eq.slant$
#let ls = $lt.eq.slant$
#let back = $backslash$
#set enum(numbering:"1.a.i.")

= CAPES de mathématiques - 2026 - sujet 0
== Partie I
\
+ Faux : le polynôme $(X^2+1)^2 in RR[X]$ n'a pas de racine réelle (ses racines dans $CC$ sont $-i$ et $i$) mais n'est pas irréductible (il s'écrit comme produit de deux polynômes de degré $gs 1$).

+ Faux : si une matrice a pour polynôme caractéristique $P=X^3+2 X^2+X$ alors son déterminant est nul, donc la matrice n'est pas inversible. En effet, le terme constant du polynôme caractéristique d'une matrice $M$ carrée d'ordre $n$ vaut $(-1)^n det (M)$ (ou $det(M)$ selon la définition utilisée).

+ Vrai : l'équation caractéristique s'écrit $x^2+2 a x+a^2=0$ i.e. $(x+a)^2 = 0$. Donc les solutions de l'équations différentielle sont les fonctions de la forme $x|->(A x+B) e^(-a x)$ où $A,B in RR$. Par croissances comparée, toutes ces fonctions tendent vers $0$ en $+infinity$ (car $a>0$).

+ TODO

+ Faux : si $cal(F)$ est l'ensemble des fonctions de $RR$ dans $RR$ qui n'annulent en au moins un point, alors l'assertion $(cal(P))$ est vraie par définition de $cal(F)$ et l'assertion $(cal(Q))$ est fausse.

+ Vrai : par le principe des tiroirs, deux des trois entiers $a,b,c$ ont le même reste modulo $2$, i.e. sont congrus modulo $2$.

== Partie II
\
+ TODO

== Partie III
\
+ On a les équivalences : $ e^(i theta/2)=e^(-i theta/2) &<==> cos(theta/2)+i sin(theta/2)=cos(-theta/2)+i sin(-theta/2) \ &<==> cos(theta/2)+i sin(theta/2)=cos(theta/2)-i sin(theta/2) \ &<==> sin(theta/2) = - sin(theta/2) <==> sin(theta/2)=0 \ &<==> theta/2 in pi ZZ <==> theta in 2 pi ZZ $

+ 
  + Soit $n in NN^*$. Par la formule de Moivre, $E_n$ est une somme géométrique de raison $e^(i theta)!=1$ (car $theta in.not 2 pi ZZ$) donc $ E_n &= ((e^(i theta))^(n+1)-1)/(e^(i theta)-1) = (e^(i (n+1) theta)-1)/(e^(i theta)-1) "par la formule de Moivre" \ &=(e^(i (n+1) theta/2))/(e^(i theta/2)) (e^(i (n+1) theta/2)-e^(-i (n+1) theta/2))/(e^(i theta/2)-e^(- i theta/2)) \ &= e^(i n theta /2) (sin ((n+1) theta/2))/(sin(theta/2)) $
  + Soit $n in NN^*$. On a $ S_n = 1/n Re(E_n)=(sin ((n+1) theta/2) cos (n theta/2))/( n sin(theta/2)) $ $ T_n = 1/n Im(E_n)=(sin ((n+1) theta/2) sin (n theta/2))/( n sin(theta/2)) $
  + Soit $n in NN^*$. On a par inégalité triangulaire $ abs(E_n)ls (abs(e^(i (n+1) theta))+1)/(abs(e^(i theta)-1)) =2/(abs(e^(i theta)-1)) $ Notons $M=2/(abs(e^(i theta)-1)) in RR_+^*$. Alors $abs(Re(E_n)) ls abs(E_n) ls M$ et $abs(Im(E_n)) ls abs(E_n) ls M$, donc $abs(S_n) ls M/n$ et $abs(T_n) ls M/n$. Par le théorème des gendarmes, on en déduit que $ lim_(n->+infinity) S_n = lim_(n -> +infinity) T_n=0 $
+ Si $theta in 2 pi ZZ$ alors pour tout $k in NN$, $e^(i k theta)=1$ donc pour tout $n in NN^*$, $ E_n &=n+1 \ S_n &= 1/n Re(E_n) = (n+1)/n \ T_n &= 1/n Im (E_n)=0 $ En particulier, $lim_(n->+infinity) S_n = 1$ et $lim_(n->+infinity) T_n=0$.

+ Montrons par récurrence que pour tout $k in NN$, la matrice de $r^k$ dans toute base orthonormée directe est $ mat(cos(k theta),-sin(k theta);sin(k theta),cos(k theta)) $
  - Si $k=0$ alors $r^k=id_(RR^2)$, donc la matrice de $r^k$ dans toute base est $ mat(1,0;0,1)=mat(cos(0),-sin(0);sin(0),cos(0)) $
  - Soit $k in NN$. Supposons le résultat au rang $k$ et considérons une base orthonormée directe de $RR^2$. Dans cette base, la matrice de $r^(k+1)$ est égale au produit de la matrice de $r^k$ dans cette base par la matrice de $r$ dans cette base. Par hypothèse de récurrence, la matrice de $r^(k+1)$ vaut donc $ &mat(cos(k theta),-sin(k theta);sin(k theta),cos(k theta)) mat(cos(theta),-sin(theta);sin(theta),cos( theta)) \ &= mat(cos(k theta) cos(theta)-sin(k theta sin (theta)),-cos(k theta) sin(theta)-sin(k theta) cos(theta);sin(k theta) cos(theta)+cos(k theta) sin (theta),-sin(k theta) sin(theta)+cos(k theta) cos (theta)) \ &=mat(cos((k+1) theta),-sin((k+1) theta);sin((k+1) theta),cos((k+1) theta)) "par les formules d'addition" $ ce qui achève la récurrence.

  Par conséquent, si on écrit $x=(x_1,x_2)$ alors (la base canonique étant orthonormée directe) pour tout $k in NN$, $r^k (x)=(cos(k theta) x_1-sin(k theta) x_2,sin(k theta) x_1+cos(k theta) x_2)$. Du coup, TODO

== Partie IV
\
+
  + La variable $N_1$ vaut $1$ avec probabilité $1$, son espérance est $E(N_1)=1$.
  + Avec probabilité $p^2+(1-p)^2$, les deux premiers lancers donnent le même résultat et on a alors $N_2=1$. Avec probabilité $2 p(1-p)$, les deux premiers lancers donnent des résultats différents et on a alors $N_2=2$. Ainsi $N_2$ est à valeurs dans ${1,2}$, $P(N_2=1)=p^2+(1-p)^2$, $P(N_2=2)=2 p (1-p)$ et $ E(N_2)=p^2+(1-p)^2+4 p (1-p)=1+2p (1-p) $

+ On a $N_n (Omega)=[|1,n|]$, $P(N_n=1)=p^n +(1-p)^n$ et $P(N_n=n)=$ TODO

+ Soit $k in [|1,n|]$. Alors $G_k$ est dérivable et pour tout $t in RR$, on a $ G'_k (t)=sum_(i=1)^n i P(N_k=i) t^(i-1)$, donc $G'_k (1)=sum_(i=1)^n i P(N_k=i)=E(N_k)$.

+ 