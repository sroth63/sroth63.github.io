#set par(
  first-line-indent: 1em,
  justify: true,
)

#let ov(x) = $overline(#x)$

#set page(numbering:"1/1")

Sascha Roth --- Last modification: #datetime.today().display()\ This document contains solutions of some exercises in Serge Lang's _Algebra_.

#outline()

= Groups
== Summary

#set enum(numbering:"(i)")

*Proposition 2.1.* _Let $G$ be a group and let $H$, $K$ be two subgroups such that $H inter K=e$, $H K=G$, and such that $x y=y x$ for all $x in H$ and $y in K$. Then the map $ H times K-> G $ such that $(x,y)|-> x y$ is an isomorphism._
\ \
*Proposition 2.2.* _Let $G$ be a group and $H$ a subgroup. Then $(G:H)(H:1)=(G:1)$, in the sense that if two of these indices are finite, so is the third and equality holds as stated. If $(G:1)$ is finite, the order of $H$ divides the order of $G$._

_More generally, let $H$, $K$ be subgroups of $G$ and let $H supset K$. Let ${x_i}$ be a set of (left) coset representatives of $K$ in $H$ and let ${y_j}$ be a set of coset representatives of $H$ in $G$. Then we contend that ${y_j x_i}$ is a set of coset representatives of $K$ in $G$._
\ \
*Proposition 3.1.* _Let $G$ be a finite group. An abelian tower of $G$ admits a cyclic refinement. Let $G$ be a finite solvable group. Then $G$ admits a cyclic tower whose last element is ${e}$._
\ \
*Theorem 3.2.* _Let $G$ be a group and $H$ a normal subgroup. Then $G$ is solvable if and only if $H$ and $G slash H$ are solvable._
\ \
*Lemma 3.3. (Butterfly Lemma.)* (Zassenhaus) _Let $U$, $V$ be subgroups of a group. Let $u$, $v$ be normal subgroups of $U$ and $V$, respectively. Then $ u(U inter v) "is normal in" u(U inter V),\ (u inter V)v "is normal in" (U inter V)v, $ and the factor groups are isomorphic, i.e. $ u(U inter V) slash u (U inter v) approx (U inter V) v slash (u inter V)v. $ _ 
\ \
*Theorem 3.4.* (Shreier) _Let $G$ be a group. Two normal towers of subgroups ending with the trivial group have equivalent refinements._
\ \
*Theorem 3.5.* (Jordan-Hölder) _Let $G$ be a group, and let $ G=G_1 supset G_2 supset dots supset G_r={e} $ be a normal tower such that each group $G_i slash G_(i+1)$ is simple, and $G_i != G_(i+1)$ for $i=1,dots,r-1$. Then any normal tower of $G$ having the same properties is equivalent to this one. _
\ \
*Proposition 4.1.* _Let $G$ be a finite group of order $n>1$. Let $a$ be an element of $G$, $a!=e$. Then the period of $a$ divides $n$. If the order of $G$ is a prime number $p$, then $G$ is cyclic and the period of any generator is equal to $p$._
\ \
*Proposition 4.2.* _Let $G$ be a cyclic group. Then every subgroup of $G$ is cyclic. If $f$ is a homomorphism of $G$, then the image of $f$ is cyclic._
\ \
*Proposition 4.3.*
+ _An infinite cyclic group has exactly two generators (if $a$ is a generator, then $a^(-1)$ is the only other generator)._
+ _Let $G$ be a finite cyclic group of order $n$, and let $x$ be a generator. The set of generators of $G$ consists of those powers $x^v$ of $x$ such that $v$ is relatively prime to $n$._
+ _Let $G$ be a cyclic group, and let $a$, $b$ be two generators. Then there exists an automorphism of $G$ mapping $a$ onto $b$. Conversely, any automorphism of $G$ maps $a$ on some generator of $G$. _
+ _Let $G$ be a cyclic group of order $n$. Let $d$ be a positive integer dividing $n$. Then there exists a unique subgroup of $G$ of order $d$. _
+ _Let $G_1$, $G_2$ be cyclic of orders $m$, $n$ respectively. If $m$, $n$ are relatively prime then $G_1 times G_2$ is cyclic. _
+ _Let $G$ be a finite abelian group. If $G$ is not cyclic, then there exists a prime $p$ and a subgroup of $G$ isomorphic to $C times C$, where $C$ is cyclic of order $p$. _
\
*Proposition 5.1.* _If $G$ is a group operating on a set $S$, and $s in S$, then the order of the orbit $G s$ is equal to the index $(G:G_s)$._
\ \
*Proposition 5.2.* _The number of conjugate subgroups to $H$ is equal to the index of the normalizer of $H$._
\ \
*Proposition 5.3.* _There exists a unique homomorphism $epsilon:S_n->{plus.minus 1}$ such that for every transposition $tau$ we have $epsilon(tau)=1$._
\ \
*Theorem 5.4.* _If $n gt.equiv 5$ then $S_n$ is not solvable._
\ \
*Theorem 5.5.* _If $n gt.equiv 5$ then the alternating group $A_n$ is simple._
\ \
*Lemma 6.1.* _Let $G$ be a finite abelian group of order $m$, let $p$ be a prime number dividing $m$. Then $G$ has a subgroup of order $p$._
\ \
*Theorem 6.2.* _Let $G$ be a finite group and $p$ be a prime number dividing the order of $G$. Then there exists a $p$-Sylow subgroup of $G$._
\ \
*Lemma 6.3.* _Let $H$ be a $p$-group acting on a finite set $S$. Then:_
+ _The number of fixed points of $H$ is $equiv hash(S) mod p$._
+ _If $H$ has exactly one fixed point, then $hash(S) equiv 1 mod p$._
+ _If $p divides hash(S)$, then the number of fixed points of $H$ is $equiv 0 mod p$._
\
*Theorem 6.4.* _Let $G$ be a finite group._
+ _If $H$ is a $p$-subgroup of $G$, then $H$ is contained in some $p$-Sylow subgroup._
+ _All $p$-Sylow subgroups are conjugate._
+ _The number of $p$-Sylow subgroups of $G$ is $equiv 1 mod p$._
\
*Theorem 6.5.* _Let $G$ be a finite $p$-group. Then $G$ is solvable. If its order is $>1$, then $G$ has a non-trivial center._
\ \
*Corollary 6.6.* _Let $G$ be a $p$-group which is not of order $1$. Then there exists a sequence of subgroups $ {e}=G_0 subset G_1 subset G_2 subset dots subset G_n=G $ such that $G_i$ is normal in $G$ and $G_(i+1) slash G_i$ is cyclic of order $p$._
\ \
*Lemma 6.7.* _Let $G$ be a finite group and let $p$ be the smallest prime dividing the order of $G$. Let $H$ be a subgroup of index $p$. Then $H$ is normal._
\ \
*Proposition 6.8.* _Let $p$, $q$ be distinct primes and let $G$ be a group of order $p q$. Then $G$ is solvable._

== Exercises

#set enum(numbering:"1.a.")

+ Show that every group of order $lt.equiv 5$ is abelian.

  *Solution.* The trivial group is abelian. According to Proposition 4.1, every group of order $2$, $3$ and $5$ is cyclic, and thus abelian. 

  Now, consider a group $G$ of order $4$. Suppose there exists $a,b in G$ such that $a b != b a$, and let $e$ be the identity element and $c$ the last element of the group. Then $a b$ can't be equal to $a$ or $b$, because otherwise we would have $b=e$ or $a=e$ respectively. The same goes for $b a$. As $a b!=b a$, we have $a b=e$ and $b a =c$ or the other way around. If $a b=e$ and $b a =c$ then $a= (a b) a=a (b a)=a c$ which is absurd. Thus, $G$ is abelian.

+ Show that there are two non-isomorphic groups of order $4$, namely the cyclic one, and the product of two cyclic groups of order $2$. 

  *Solution.* Let $G$ be a group of order $4$. According to Exercise 1, $G$ is abelian. If $G$ is not cyclic, then according to Proposition 4.3. (vi), $G$ is isomorphic to $C times C$ where $C$ is a cyclic group of prime order $p$. Necessarily, $p=2$.

+ Let $G$ be a group. A *commutator* in $G$ is an element of the form $a b a^(-1) b^(-1)$ with $a,b in G$. Let $G^c$ be the subgroup generated by the commutators. Then $G^c$ is called the commutator subgroup. Show that $G^c$ is normal. Show that any homomorphism of $G$ into an abelian group factors through $G slash G^c$.

  *Solution.* Consider $g in G$ and $c in G^c$. Then $x c x^(-1)=(x c x^(-1) c^(-1)) c$. Now, we have $x c x^(-1) c^(-1) in G^c$ and $c in G^c$, so $x c x^(-1) in G^c$. Hence, $x G^c x^(-1) subset G^c$ so $G^c$ is normal.

  Let $f:G->H$ be a homomorphism, where $H$ is an (additive) abelian group. Then for any $a,b in G$, we have $f(a b a^(-1) b^(-1))=f(a)+f(b)-f(a)-f(b)=0$ (because $H$ is abelian). Thus, $G^c subset ker f$, which shows that $f$ factors through $G slash G^c$.

+ Let $H$, $K$ be subgroups of a finite group $G$ with $K subset N_H$. Show that $ hash(H K)=(hash (H)hash(K))/(hash(H inter K)) $

  *Solution.* We have a canonical isomorphism $ H slash (H inter K) approx (H K) slash K $ and the result follows by taking cardinalities.

+ *Goursat's Lemma.* Let $G$, $G'$ be groups, and let $H$ be a subgroup of $G times G'$ such that the two projections $p_1:H->G$ and $p_2:H->G'$ are surjective. Let $N$ be the kernel of $p_2$ and $N'$ be the kernel of $p_1$. One can identify $N$ as a normal subgroup of $G$, and $N'$ as a normal subgroup of $G'$. Show that the image of $H$ in $G slash N times G' slash N'$ is the graph of an isomorphism $G slash N approx G' slash N'$.

  *Solution.* For any $x in G$, respectively $x in G'$, denote by $ov(x)$ its class in $G slash N$, respectively $G slash N'$. Let $ A:={(ov(x),ov(y));(x,y) in H} subset G slash N times G' slash N'. $

  First, let us show that $A$ is a graph of a function $phi:G slash N -> G' slash N'$. Let $ov(x) in G slash N$. As $p_1$ is surjective, there exists $x in G$ such that $(x,y) in H$, so $ov(x)$ has an image $ov(y) in G' slash N'$. In addition, this image is unique: if $(ov(x),ov(y)),(ov(x),ov(y')) in A$ then $(e, y y'^(-1)) in N'$, so $ov(y y'^(-1))=ov(e)$ and $ov(y)=ov(y')$. Thus, we have defined a function $phi:G slash N -> G' slash N'$, that sends $ov(x)$ to the unique $ov(y)$ such that $(x,y) in H$.

  Now we want to show that $phi$ is an isomorphism. Let $ov(x),ov(x') in G slash N$. If $phi(ov(x))=ov(y)$ and $phi(ov(x'))=ov(y')$, we have $(x,y),(x',y') in H$, so $(x x', y y') in H$. Thus, $phi(ov(x) ov(x'))=ov(y y')=phi(ov(x)) phi(ov(x'))$. This shows that $phi$ is a homomorphism. It is injective: if $ov(x) in ker phi$ then $(x,e) in H$, so $(x,e) in N$ and $ov(x)=0$. Finally, it is surjective: if $ov(y) in G' slash N'$, then since $p_2$ is surjective, there exists $x in G$ such that $(x,y) in H$, i.e. $phi(ov(x))=ov(y)$.

+ Prove that the group of inner automorphisms of a group $G$ is normal in $"Aut"(G)$.

  *Solution.* Let $"Inn"(G)={bold(c)_g:x|->g x g^(-1);g in G}$ be the group of inner automorphisms. Consider $bold(c)_g in "Inn"(G)$ and $phi in "Aut"(G)$. Then for all $x in G$, $ phi bold(c)_g phi^(-1) (x)=phi(g phi^(-1) (x) g^(-1))=phi(g)x phi(g)^(-1) $ which shows that $phi bold(c)_g phi^(-1)=bold(c)_(phi(g)) in "Inn"(G)$. Thus, $phi "Inn"(G) phi^(-1) subset "Inn"(G)$ and $"Inn"(G)$ is normal.

+ Let $G$ be a group such that $"Aut"(G)$ is cyclic. Prove that $G$ is abelian.

  *Solution.* If $"Aut"(G)$ is cyclic then the subgroup of inner automorphisms $"Inn"(G)$ is also cyclic by Proposition 4.2. We have a homomorphism $ G &->& "Inn"(G) \ g &|->& (bold(c)_g:x|-> g x g^(-1)) $ whose kernel is the center $Z(G)$. Thus $G slash Z(G) approx "Inn"(G)$ is also cyclic. Consider $g in G$ such that its class $overline(g) in G slash Z(G)$ generates $G slash Z(G)$. 

  Consider $x,y in G$. We can write $ov(x)=ov(g)^k$ and $ov(y)=ov(g)^l$ for some integers $k$, $l$. In other words, $x= g^(k)u$ and $y=g^(l) v$ for some $u,v in Z(G)$. It follows $ x y=g^k u g^l v=g^k g^l u v=g^l g^k u v=g^l v g^k u=y x $ so $G$ is abelian.

+ Let $G$ be a group and let $H$, $H'$ be subgroups. By a *double coset* of $H$, $H'$ one means a subset of $G$ of the form $H x H'$.
  + Show that $G$ is a disjoint union of double cosets.
  + Let ${c}$ be a family of representatives for the double cosets. For each $a in G$ denote by $[a] H'$ the conjugate $a H' a^(-1)$ of $H'$. For each $c$ we have a decomposition into ordinary cosets $ H=union.big_(x_c) x_c (H inter [c]H'), $ where ${x_c}$ is a family of elements of $H$, depending on $c$. Show that the elements ${x_c c}$ form a family of left coset representatives for $H'$ in $G$; that is, $ G=union.big_(c) union.big_(x_c) x_c c H', $ and the union is disjoint. (Double cosets will not emerge further until Chapter XVIII.)

  *Solution.*
  + Every $x in G$ is in the double coset $H x H'$. Thus, $G=union.big_(x in G) H x H'$ and it is sufficient to show that two double cosets $H x H' != H y H'$ are disjoint. Suppose they are not, and let $a$ be an element in their intersection. We can write $a =h_1 x h'_1=h_2 y h'_2$ with $h_1,h_2 in H$ and $h'_1,h'_2 in H'$. Now, we have $ H x H'=H h_1^(-1) a h'_1^(-1) H'=H h_1^(-1) h_2 y h'_2 h'_1^(-1) H'=H y H' $ which is absurd.

  + There are errors in the indexes of the unions in the exercise statement, at least in my edition (the above statement is correct). For a fixed $c$, since $H inter [c] H'$ is a subgroup of $H$, we indeed have a decomposition into ordinary cosets $ H=union.big_(x_c) x_c (H inter [c]H') $ where the union is disjoint. Now, $ G &= union.big_c H c H' \ &= union.big_c (union.big_(x_c) x_c (H inter [c]H')) c H' \ &= union.big_c union.big_(x_c) x_c (H inter [c]H' ) c H' $ and the union is disjoint. It remains to show that for given $c$ and $x_c$, we have $(H inter [c]H' ) c H'=c H'$. If $y in (H inter [c]H' ) c H'$, we can write $y=c h_1 c^(-1) c h_2=c h_1 h_2$ with $h_1,h_2 in H'$. Thus, $(H inter [c]H' ) c H' subset c H'$ and the other inclusion is clear.

+
  + Let $G$ be a group and $H$ a subgroup of finite index. Show that there exists a normal subgroup $N$ of $G$ contained in $H$ and also of finite index. [_Hint:_ If $(G:H)=n$, find a homomorphism of $G$ into $S_n$ whose kernel is contained in $H$.]
  + Let $G$ be a group and let $H_1$, $H_2$ be subgroups of finite index. Prove that $H_1 inter H_2$ has finite index.

  *Solution.*
  + $G$ operates by translation on the set of left cosets $G slash H$. In other words, we have a homomorphism $phi:G->"Perm"(G slash H)$. Let $N$ be its kernel. Then $N$ is a normal subgroup of $G$. Moreover, it is contained in $H$: if $g in ker phi$ then for all $x in H$, we have $x H=g x H$ and in particular, $g in g H=H$. $G slash N$ is isomorphic to a subset of $"Perm"(G slash H)$, thus it is finite, i.e. $N$ is of finite index.

  + By a., there exists two normal subgroups $N_1$ and $N_2$ of finite indexes contained in $H_1$ and $H_2$ respectively. We know that $(N_1:N_1 inter N_2)=(N_1 N_2 :N_2)$. Since $N_2$ has finite index, $(N_1 N_2 :N_2)$ is finite. Thus, since $N_1$ is of finite index, $(G:N_1 inter N_2)=(G:N_1)(N_1:N_1 inter N_2)$ is also finite. As $N_1 inter N_2 subset H_1 inter H_2$, the subgroup $H_1 inter H_2$ also has finite index.

+ Let $G$ be a group and let $H$ be a subgroup of finite index. Prove that there is only a finite number of right cosets of $H$, and that the number of right cosets is equal to the number of left cosets.

  *Solution.* We define a map between left and right cosets by $phi(x H)=H x^(-1)$. Let's first show that this map is well defined. Suppose $x H = y H$ and let $ h x^(-1) in H x^(-1)$ (for some $h in H$). As $x in y H$, we can write $x = y h'$ for some $h' in H$. It follows $h x^(-1)=h h'^(-1) y^(-1) in H y^(-1)$. Thus $H x^(-1) subset H y^(-1)$ and symetrically, $H x^(-1) = H y^(-1)$. So $phi$ is well defined.

  $phi$ is obviously surjective, because any right coset $H x$ is equal to $phi(x^(-1) H)$. Finally, it is injective: if $H x^(-1)=H y^(-1)$ then $x H=y H$ by the same arguments as above. We have proved that $phi$ is a bijection between left and right cosets. In particular, since $H$ is of finite index, the number of right cosets is also finite and equal to the number of left cosets.

+ Let $G$ be a group, and $A$ a normal abelian subgroup. Show that $G slash A$ operates on $A$ by conjugation, and in this manner get a homomorphism of $G slash A$ into $"Aut"(A)$.

  *Solution.* Consider the operation of $G slash A$ on $A$ defined by $attach(a,tl:ov(g))=g a g^(-1)$. This is well defined: if $ov(g)=ov(h)$, then we can write $g=h x$ for some $x in A$, and since $A$ is abelian, $ g a g^(-1)=h x a x^(-1) h^(-1)=h x x^(-1) a h^(-1)=h a h^(-1)$. Moreover, $g a g^(-1) in A$ because $A$ is normal. One can easily see that this indeed defines an operation.

    Thus, we have defined a homomorphism $G slash A -> "Perm"(A)$. In addition, the permutations we just defined are of the form $a|-> g a g^(-1)$: they are automorphisms, giving us a homomorphism $G slash A -> "Aut"(A)$.

  *Semidirect product*

+ Let $G$ be a group and let $H$, $N$ be subgroups with $N$ normal. Let $gamma_x$ be conjugation by an element $x in G$.
  + Show that $x|-> gamma_x$ induces a homomorphism $f:H->"Aut"(N)$.
  + If $H inter N={e}$, show that the map $H times N -> H N$ given by $(x,y)|-> x y$ is a bijection, and that this map is an isomorphism if and only if $f$ is trivial, i.e. $f(x)=id_N$ for all $x in H$.\ We define $G$ to be the *semidirect product* of $H$ and $N$ if $G =N H$ and $H inter N={e}$. 
  + Conversely, let $N$, $H$ be groups, and let $psi:H->"Aut"(N)$ be a given homomorphism. Construct a semidirect product as follows. Let $G$ be the set of pairs $(x,h)$ with $x in N$ and $h in H$. Define the composition law $ (x_1,h_1)(x_2,h_2)=(x_1 psi(h_1)x_2,h_1 h_2). $ Show that this is a group law, and yields a semidirect product of $N$ and $H$, identifying $N$ with the set of elements $(x,1)$ and $H$ with the set of elements $(1,h)$.

  *Solution.*
  + For a given $x in G$, the map $gamma_x:y|->x y x^(-1)$ induces an automorphism $N->N$ because $N$ is normal. Moreover, one can easily see that $gamma_(x y)=gamma_x gamma_y$, so $x|->gamma_x$ induces a homomorphism $H->"Aut"(N)$.

  + The map is obviously surjective by definition of $H N$. If $x y =x' y'$ then $x'^(-1) x=y' y^(-1) in H inter N={e}$, so $(x,y)=(x',y')$. Thus, the map is bijective. It is a morphism if and only if $x x' y y'=x y x' y'$ for all $x,x' in H$ and $y,y' in N$, if and only if $x' y=y x'$ for all $x' in H$ and $y in N$, if and only if $x' y x'^(-1)=y$ for all $x' in H$ and $y in N$, if and only if $f$ is trivial.
  + It is easy to show that the composition law is a group law. In particular, the identity element is $e:=(1_N,1_H)$ and the inverse of $(x,h)$ is $(psi(h^(-1)) x^(-1),h^(-1))$.
  
    Identifying $N$ with the set of elements $(x,1)$ and $H$ with the set of elements $(1,h)$, we have $H inter N={e}$ and $G=N H$. Indeed, for $(x,h) in G$ we can write $(x,h)=(x,1)(1,h) in N H$.

+
  + Let $H,N$ be normal subgroups of a finite group $G$. Assume that the orders of $H$, $N$ are relatively prime. Prove that $x y =y x$ for all $x in H$ and $y in N$, and that $H times N approx H N$. 
  + Let $H_1,dots,H_r$ be normal subgroups of $G$ such that the order of $H_i$ is relatively prime to the order of $H_j$ for $i!= j$. Prove that $ H_1 times dots times H_r approx H_1 dots H_r. $

  *Example.* If the Sylow subgroups of a finite group are normal, then $G$ is the direct product of its Sylow subgroups. \
  *Solution.*
  + If $x in H inter N$ then the order of $x$ divides the orders of $H$ and $N$ which are coprime, so $x=e$. Thus, $H inter N={e}$. Now, if $x in H$ and $y in N$ then $y^(-1) x y in H$ since $H$ is normal, hence $y^(-1) x y x^(-1) in H$. Similarly, $y^(-1) x y x^(-1) in N$, so $y^(-1) x y x^(-1) =e$, i.e. $x y=y x$. By exercise 12.b, it follows $H times N approx H N$.

  + We proceed by induction on $r$. The case $r=1$ is trivial and the case $r=2$ is the previous question. Now, suppose the result is true for $r-1$, i.e. $H_1 times dots times H_(r-1) approx H_1 dots H_(r-1)$. Then $H_1 times dots times H_r approx H_1 dots H_(r-1) times H_r$. The orders of $H_1 dots H_(r-1)$ and $H_r$ are relatively prime. Moreover, $H_1 dots H_(r-1)$ is a normal subgroup of $G$, for if $x_1 dots x_(r-1) in H_1 dots H_(r-1)$ and $y in G$ then $ y x_1 dots x_(r-1) y^(-1)=underbrace(y x_1 y^(-1),in H_1) underbrace(y x_2 y^(-1), in H_2) dots underbrace(y x_(r-1) y^(-1), in H_(r-1)) in H_1 dots H_(r-1). $ $H_r$ is also normal, so by the previous question we get $H_1 times dots times H_r approx H_1 dots H_r$. 

+ Let $G$ be a finite group and let $N$ be a normal subgroup such that $N$ and $G slash N$ have relatively prime orders.
  + Let $H$ be a subgroup of $G$ having the same order as $G slash N$. Prove that $G=H N$.
  + Let $g$ be an automorphism of $G$. Prove that $g(N)=N$.

  *Solution.*
  + As $H$ and $N$ have relatively prime orders, we have $H inter N={e}$ (see Exercise 13.a.). By Exercise 12.b, we have $hash(H N)=hash(H) hash(N)=hash(G slash N) hash (N)=hash(G)$. Thus, $G=H N$.

  + Let $n in N$. Let $omega_1$ and $omega_2$ be the orders of $n$ in $N$ and $ov(g(n))$ in $G slash N$ respectively. These orders must be relatively prime so by Bézout's theorem, there exists integers $u,v$ such that $u omega_1+v omega_2=1$. Moreover, $ov(g(n^(omega_2)))=ov(g(n))^(omega_2)=ov(e)$ so $g(n^(omega_2)) in N$. It follows $ g(n)=g(n^(u omega_1+v omega_2))=g((n^(omega_1))^u) g(n^(omega_2))^v=g(n^(omega_2))^v in N $ which proves that $g(N) subset N$. Since $g$ is a bijection, $g(N)=N$.

  *Some operations*

+ Let $G$ be a finite group operating on a finite set $S$ with $hash(S) gt.equiv 2$. Assume that there is only one orbit. Prove that there exists an element $x in G$ which has no fixed point, i.e. $x s !=s$ for all $s in S$.

  *Solution.* Consider the set $A:={(x,s) in G times S;x s=s}$. On one hand, $ A=union.sq.big_(s in S) {x in G;x s=s} times {s}$ so $hash(A)=sum_(s in S) hash(G_s)$. By proposition 5.1, $hash(G_s)=(hash(G))/(hash(G s))=(hash(G))/(hash(S))$ (the last equality commes from the fact that there is only one orbit, so it is equal to the entire set $S$). This gives us $hash(A)=hash(G)$. 

  On the other hand, $ A=union.sq.big_(x in G) {x} times {s in S;x s=s}$ so $hash(A)=sum_(x in G) hash{s in S;x s =s}$. Suppose for the sake of contradiction that every $x in G$ has a fixed point. Then we have $hash{s in S;x s =s} gt.equiv 1$ for all $x in G$, and we even have $hash{s in S;x s =s} = hash S > 1$ for $x=e$. Thus, $hash(A)>hash(G)$, which is absurd and concludes the proof.

+ Let $H$ be a proper subgroup of a finite group $G$. Show that $G$ is not the union of all the conjugates of $H$. (But see Exercise 23 of Chapter XIII.)

  *Solution.* $G$ operates on the set of subgroups by conjugation. The orbit of $H$ for this operation, which we denote as $G dot H$, is the set of conjugates on $H$. Let $A$ be the union of all the conjugates of $H$, that is, $A=union.big_(F in G dot H) F$. As every conjugate of $H$ has the same cardinality as $H$, we have $ hash(A) lt.equiv sum_(F in G dot H) hash(H) = hash(G dot H) hash (H). $ If $H$ has at leat two conjugates then this inequality is strict because the identity element is in every conjugate of $H$, so the above union is not disjoint. Furthermore, $hash(G dot H)=(hash G)/(hash G_H)$. As $H subset G_H$, we have $hash(A)<hash(G)$ so $G$ is not the union of all the conjugates of $H$. 

  If $H$ has only one conjugate, this conjugate is $H=e H e^(-1)$, so $G$ is not the union of the conjugates of $H$ since $H$ is a proper subgroup.

+ Let $X$, $Y$ be finite sets and let $C$ be a subset of $X times Y$. For $x in X$ let $phi(x)=$ number of elements $y in Y$ such that $(x,y) in C$. Verify that $ hash(C)=sum_(x in X) phi(x). $
  _Remark._ A subset $C$ as in the above exercise is often called a *correspondence*, and $phi(x)$ is the number of elements in $Y$ which correspond to a given element $x in X$. \
  *Solution.* We have $C=union.sq.big_(x in X){x} times {y in Y;(x,y) in C}$ and the result follows immediately by taking cardinalities.

+ Let $S$, $T$ be finite sets. Show that $hash"Map"(S,T)=(hash T)^(hash (S))$. 

  *Solution.* A function $S->T$ is defined by choosing the image among the $hash(T)$ elements of $T$ for each of the $hash(S)$ elements in $S$. Thus the identity is clear.

+ Let $G$ be a finite group operating on a finite set $S$.
  + For each $s in S$ show that $ sum_(t in G s) 1/(hash (G t))=1. $
  + For each $x in G$ define $f(x) =$ number of elements $s in S$ such that $x s=s$. Prove that the number of orbits of $G$ in $S$ is equal to $ 1/(hash(G)) sum_(x in G) f(x). $
  *Solution.*
  + If $t in G s$ then $G t = G s$, and the result follows immediately.

  + $ 1/(hash(G)) sum_(x in G) f(x)&=1/(hash(G)) sum_(x in G) hash {s in S;x s =s} \ &= 1/(hash(G)) hash union.sq.big_(x in G) {x} times {s in S;x s =s} \ &= 1/(hash(G)) hash{(x,s) in G times S;x s =s} \ &= 1/(hash(G)) hash union.sq.big_(s in S) {x in G;x s =s} times {s} \ &= 1/(hash(G)) sum_(s in S) hash{x in G;x s=s} \ &= 1/(hash (G)) sum_(s in S) hash (G_s) \ &= sum_(s in S) 1/(hash(G s)) "by proposition 5.1." \ &= sum_(s in A) sum_(t in G s) 1/(hash (G t)) "where" A "is a set of representatives of the orbits" \ &= sum_(s in A) 1 "by the previous question" \ &= "number of orbits" $

  _Troughout, $p$ is a prime number._

+ Let $P$ be a $p$-group. Let $A$ be a normal subgroup of order $p$. Prove that $A$ is contained in the center of $P$.

  *Solution.* We have $hash(P)=p^n$ for some integer $n>0$. $P$ operates on $A$ by conjugation, and the orbit decomposition formula gives $ p=sum_(i in I) (p^n)/(p^(m_i)) $ where $I$ is the set of orbits and $p^(m_i)$ is the order of $P_(a) := {p in P;p a p^(-1)=a} $ for some $a$ in the orbit $i$. But $P_e=P$ so all the $m_i$ must be equal to $n$ (otherwise we would have $sum_(i in I) (p^n)/(p^(m_i))>p$). The orbit of $e$ is just ${e}$. Consider any other orbit, and any $a in A$. Then $P_a=P$, i.e. $a in Z(P)$. But $A$ is a cyclic group of prime order and $a!=e$, and $a$ is a generator of $A$, so $A subset Z(P)$.

+ Let $G$ be a finite group and $H$ a subgroup. Let $P_H$ be a $p$-Sylow subgroup of $H$. Prove that there exists a $p$-Sylow subgroup $P$ of $G$ such that $P_H = P inter H$.

+ Let $H$ be a normal subgroup of a finite group $G$ and assume that $hash(H)=p$. Prove that $H$ is contained in every $p$-Sylow subgroup of $G$.

  *Solution.* By Theorem 6.4.(i), $H$ is contained in some $p$-Sylow subgroup $P$. Let $Q$ be another $p$-Sylow subgroup of $G$. By Theorem 6.4.(ii), there exists $a in G$ such that $Q=a P a^(-1)$. Then, $a H a^(-1) subset a P a^(-1) =Q$, and $a H a^(-1)=H$ since $H$ is normal. Thus, $H$ is contained in $Q$.

+ Let $P$, $P'$ be $p$-Sylow subgroups of a finite group $G$.
  + If $P' subset N(P)$ (normalizer of $P$), then $P'=P$.
  + If $N(P')=N(P)$, then $P'=P$.
  + We have $N(N(P))=N(P)$.