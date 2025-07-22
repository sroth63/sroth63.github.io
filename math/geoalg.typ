#set text(lang:"fr")
#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#set heading(numbering:"1.")
#set page(numbering:"1 / 1")
#set enum(numbering:"1.a.i)")

#show link : set text(blue)

#let gs=$gt.eq.slant$
#let ls=$lt.eq.slant$
#let subneq=$subset.neq$
#let subnot=$subset.eq.not$
#let subset=$subset.eq$
#let back=$backslash$
#let ext=$arrow.r.hook$
#let ov(x)=$overline(#x)$
#let und(x)=$underline(#x)$
#let appli(a,b,c,d)=$cases(#a &->& #b, #c &|->& #d)$


#let definition = thmbox("definition", "Définition", stroke:green)
#let theorem = thmbox("théorème", "Théorème", stroke:red)
#let corollary = thmbox("corollary", "Corollaire", stroke:red)
#let lemma = thmplain("lemma", "Lemme",titlefmt:strong)
#let remark = thmplain("remarque", "Remarque")
#let proof = thmproof("preuve", "Preuve")
#let example = thmplain("example","Exemple")
#let exercise = thmplain("exercise","Exercice")
#let solution = thmbox("solution","Solution",stroke:black,breakable:true).with(numbering:none)
#let papl = thmbox("papl","Pour aller plus loin", stroke:purple+1pt,breakable:true).with(numbering:none)

#text(20pt)[Géométrie algébrique]

#outline(title:"Sommaire",indent:auto)


= Variétés algébriques affines sur un corps algébriquement clos

Ici, $k$ désigne un corps algébriquement clos.

== Fermés de Zariski

#definition[On appelle espace affine de dimension $d$ sur $k$ l'ensemble $k^d$. On le note aussi $AA^d (k)$ (ou $AA^d$ lorsqu'il n'y a pas d'ambiguïté).

On parle de droite affine lorsque $d=1$, et de plan affine lorsque $d=2$.]

#definition[Si $cal(F) subset k[t_1,dots,t_d]$, on pose $ Z(cal(F)):={(x_1,dots,x_d)in k^d;forall f in cal(F),f(x_1,dots,x_d)=0} $

Si $f in k[t_1,dots,t_d]$, on pose $Z(f):=Z({f})$.]

#remark[
- $cal(F) subset cal(F')=> Z(cal(F)) supset.eq Z(cal(F'))$
- $Z(cal(F))=sect.big_(f in cal(F)) Z(f)$
- Si $I$ est l'idéal engendré par $cal(F)$ alors $Z(cal(F))=Z(I)=Z(sqrt(I))$.
]

#definition[On appelle fermé de Zariski dans $k^d$ une partie $E$ de la forme $Z(cal(F))$ où $cal(F) subset k[t_1,dots,t_d]$. On a vu qu'on peut supposer que $cal(F)$ est un idéal radical.]

#example[
- $emptyset=Z(1)$ est un fermé de Zariski.
- $k^d=Z(0)$ est un fermé de Zariski.
- Tout singleton est un fermé de Zariski : ${x}=Z(frak(m)_x)$ où $frak(m)_x$ est l'idéal $(t_1-x_1,dots,t_d-x_d)$.
]

#remark[$frak(m)_x$ est un idéal maximal, puisque $k[t_1,dots,t_d] slash frak(m)_x$ s'identifie à $k$ par la fonction $f|->f(x)$.]

#remark[- Si $(I_i)_(i in Lambda)$ sont des idéeaux de $k[t_1,dots,t_d]$ alors $Z(sum_(i in Lambda) I_i)=sect.big_(i in Lambda) Z(I_i)$. En particulier, une intersection de fermés de Zariski est un fermé de Zariski.
- Si $I,I'$ sont des idéeaux de $k[t_1,dots,t_d]$ alors $Z(I sect I')=Z(I) union Z(I')$. En effet, si $x in Z(I sect I')$ mais $x in.not Z(I)$, il existse $f in I$ telle que $f(x)!=0$, et alors pour tout $f' in I'$ on a $f(x)f(x')=0$ puisque $f f' in I sect I'$, donc $f'(x)=0$, ce qui prouve que $x in Z(I')$. Ainsi $Z(I sect I') subset Z(I) union Z(I')$ et l'inclusion réciproque est claire. En particulier, une réunion finie de fermés de Zariski est un fermé de Zariski.]

#definition[Si $E subset k^d$, on pose $ frak(I)(E):={f in k[t_1,dots,t_d];forall (x_1,dots,x_d) in E,f(x_1,dots,x_d)=0} $]

#remark[
- $frak(I)(E)$ est un idéal radical de $k[t_1,dots,t_d]$.
- $E subset E'=>frak(I)(E) supset.eq frak(I)(E')$
- $frak(I)(E)=sect.big_(x in E) frak(I)({x})$ et $frak(I)({x})=frak(m)_x$. En TODO
]