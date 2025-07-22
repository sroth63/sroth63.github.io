#import "@preview/ctheorems:1.1.3": *
#show: thmrules

#set heading(numbering:"1.")
#set page(numbering:"1 / 1")
#set enum(numbering:"1.a.i.")
#set par(justify:true)
#show link : set text(blue)

#let subneq=$subset.neq$
#let subnot=$subset.eq.not$
#let subset=$subset.eq$
#let back=$backslash$
#let ext=$arrow.r.hook$
#let ov(x)=$overline(#x)$
#let appli(a,b,c,d)=$cases(#a &->& #b, #c &|->& #d)$
#let scal(x,y)=$angle.l #x,#y angle.r$

#let definition = thmbox("definition", "Definition", stroke:green)
#let theorem = thmbox("theorem", "Theorem", stroke:red)
#let corollary = thmbox("corollary", "Corollary", stroke:red)
#let lemma = thmplain("lemma", "Lemma",titlefmt:strong)
#let remark = thmplain("remark", "Remark")
#let bibliography = thmplain("bibliography", "Bibliography").with(numbering:none)
#let proof = thmproof("proof", "Proof")
#let example = thmplain("example","Example")
#let exercise = thmplain("exercise","Exercise")
#let solution = thmbox("solution","Solution",stroke:black,breakable:true).with(numbering:none)

Sascha Roth

#text(20pt)[Formal languages]

_Moi, je crois que la grammaire, c'est une voie d'accès à la beauté. Quand on parle, quand on lit ou quand on écrit, on sent bien si on a fait une belle phrase ou si on est en train d'en lire une. On est capable de reconnaître une belle tournure ou un beau style. Mais quand on fait de la grammaire, on a accès à une autre dimension de la beauté de la langue. Faire de la grammaire, c'est la décortiquer, regarder comment elle est faite, la voir toute nue, en quelque sorte._
#align(right)[-- Muriel Barbery (1969 - )#footnote[In _L'Élégance du Hérisson_.]]

#outline(indent:auto)

#bibliography[
- #link("https://perso.telecom-paristech.fr/madore/inf105/notes-inf105.pdf")[David A. Madore, _Théorie des langages (Notes de cours à Télécom Paris)_]
]

= Regular languages

#definition[
- An _alphabet_ is simply a non-empty set.

- A _word_ over an alphabet $Sigma$ is a finite sequence of elements of $Sigma$. A word $(a_0,dots,a_(n-1))$ will be written as $a_0 dots a_(n-1)$. The integer $n$ is called the _length_ of the world. There exists exactly one word of length $0$ over the alphabet $Sigma$, called the _empty word_ and denoted by $epsilon$. The set of words over the alphabet $Sigma$ is denoted by $Sigma^*$.]

#definition[Given two words $v=v_0dots v_(m-1)$ and $w=w_0 dots w_(n-1)$ over an alphabet $Sigma$, we define the _concatenation_ of $v$ and $w$ as the word $v w:=v_0 dots v_(m-1) w_0 dots w_(n-1)$.]

#remark[
$Sigma^*$ is a monoid under concatenation (i.e., concatenation is associative and has an identity element, namely $epsilon$).
]

#definition[
- We say that $v in Sigma^*$ is a _prefix_ of $w in Sigma^*$ iff $exists u in Sigma^*,w=v u$.

- We say that $v in Sigma^*$ is a _suffix_ of $w in Sigma^*$ iff $exists u in Sigma^*,w=u v$.

- We say that $v in Sigma^*$ is a _subword_ (or a _factor_) of $w in Sigma^*$ iff $exists u, u' in Sigma^*,w=u v u'$.
]

#definition[A _language_ over an alphabet $Sigma$ is a subset of $Sigma^*$.]

#definition[Given to languages $L,M subset Sigma^*$, we define the following _regular operations_ :

- the _union_ of $L$ and $M$ is simply $L union M$;

- the _concatenation_ of $L$ and $M$ is $L M:={u v;(u,v) in L times M}$.]

#remark[The set of all languages over the alphabet $Sigma$ is a monoid under concatenation (the identity element is ${epsilon}$). Thus, we can define $L^n := underbrace(L L dots L,n "times")$ for any language $L$ and $n in NN$ (with $L^0={epsilon}$).]

#definition[Given a language $L subset Sigma^*$, we define its _Kleen star_ $ L^*=union.big_(n in NN) L^n $ The Kleen star is also considered to be a regular operations.]

#definition[The set of _regular languages_ over the alphabet $Sigma$ is defined recursively as follows:
- $emptyset$ is a regular language;
- for all $a in Sigma$, ${a}$ is a regular language;
- regular operations of regular languages are regular languages: if $L,M subset Sigma^*$ are regular languages then $L union M$, $L M$ and $L^*$ are regular languages.]

#remark[${epsilon}=emptyset^*$ is a regular language.]

#definition[A _regular expression_ over the alphabet $Sigma$ is a way to denote a language over the alphabet $Sigma$ as a word over the alphabet $Sigma union {emptyset,epsilon,(,),|,*}$ (where $emptyset$, $epsilon$, $($, $)$, $|$ and $*$ are new characters which do not belong to $Sigma$). More precisely, the set of _regular expressions_ over the alphabet $Sigma$ and their _denoted languages_ are defined recursively as follows:
- $emptyset$ is a regular expression denoting the language $emptyset$;
- $epsilon$ is a regular expression denoting the language ${epsilon}$;
- for all $a in Sigma$, the word $a$ is a regular expression denonting the language ${a}$;
- if $r_1$ and $r_2$ are regular expressions denoting the languages $L_1$ and $L_1$, then $(r_1|r_2)$ is a regular expression denoting the language $L_1 union L_2$;
- if $r_1$ and $r_2$ are regular expressions denoting the languages $L_1$ and $L_1$, then $r_1 r_2$ is a regular expression denoting the language $L_1 L_2$;
- if $r$ is a regular expression denoting the language $L$, then $(r)*$ is a regular expression denoting the language $L^*$.]

#remark[We'll use the following abbreviations:
- $*$ has priority over concatenation, which has priority over $|$ (for example, $a b*$ means $a (b)*$ and $a b|c d$ means $(a b|c d)$);
- $(r_1|r_2|r_3)$ means $((r_1|r_2) | r_3)$.]

#remark[In computer science, regular expressions are used to specify a pattern in a text search. These regular expressions are usually more general than the ones defined above, and are sometimes called _extend regular expressions_. Different syntaxes for writing extended regular expressions exist, one being the POSIX standard.

For instance, the POSIX standard allows _backreferences_: the regular expression `(a*)b\1` denotes the language ${a^n b a^n; n in NN}$ (the `\1` denotes a copy of the string captured by the first pair of parentheses). This language isn't regular, as we will see later.

The alphabet $Sigma$ is the set of all Unicode characters.

There is no special symbol for $epsilon$, it is simply not written. For instance, `(|a)` denotes the language ${epsilon, a}$.

There are also convenient abbreviations:
- `r+` means `rr*` and `r?` means `(|r)`.
- The wildcard `.` denotes any character (it can be seen as an abbreviation for $(x_1|x_2|dots|x_N)$ where $Sigma={x_1,x_2,dots,x_N}$).
- `[xyz]` is the same as `(x|y|z)` but works only for single characters. `[a-z]` denotes any character between `a` and `z` in the ASCII/Unicode order. `[^a-z]` denotes any character that is not between `a` and `z`. `[^aeio-z]` denotes any character that is not `a`, not `e`, not `i` and not between `o` and `z`.

Regular expression engines are used to find subwords in a given string matching a given regular expression. To add constraints on the position of the subwords we are looking for, we can use _anchors_: `^r` (respectively `r$`) denotes subword located at the beginning (respectively the end) of the given string that matches the regular expression `r`. Testing if the entire string matches the regular expression `r` amounts to searching for `^r$`.

To distinguish metacharacters (such as `*` and `|`) from the normal characters, one can use backslashes. For instance, `x\*` looks for an `x` followed by the character `*`, whereas `x*` looks for a repetition of the character `x`.]

= Finite automata

== Deterministic finite automata

#definition[A _deterministic finite automaton (DFA)_ is a $5$-tuple $A=(Q,Sigma,delta,q_0,F)$, consisting of:
- a finite _set of states_ $Q$;
- an alphabet $Sigma$;
- a _transition function_ $delta:Q times Sigma -> Q$;
- an _initial state_ $q_0 in Q$;
- a _set of finite states_ $F subset Q$.]

#definition[Let $A=(Q,Sigma,delta,q_0,F)$ be a DFA. The _extended transition function_ $delta^*:Q times Sigma^*->Q$ is defined recursively as follows:
- $forall q in Q,delta^* (q,epsilon)=q$;
- $forall q in Q,forall w in Sigma^*, forall a in Sigma,delta^* (q,w a)=delta(delta^* (q,w),a)$.]

#definition[Let $A=(Q,Sigma,delta,q_0,F)$ be a DFA. A state $q in Q$ is said to be:
- _accessible_ iff $exists w in Sigma^*,delta^*(q_0,w)=q$;
- _co-accessible_ iff $exists w in Sigma^*,delta^*(q,w) in F$.

The automaton $A$ is _trimmed_ iff all its states are accessible and co-accessible.]

#definition[Let $A=(Q,Sigma,delta,q_0,F)$ be a DFA.
- A word $w in Sigma^*$ is _accepted_ by $A$ iff $delta^*(q_0,w) in F$.

- The _language accepted by_ $A$ is the set of words accepted by $A$.]

TODO : on insiste sur la richesse...

== Nondeterministic finite automata

#definition[A _non-deterministic finite automaton (NFA)_ is a $5$-tuple $A=(Q,Sigma,delta,q_0,F)$, consisting of:
- a finite _set of states_ $Q$;
- an alphabet $Sigma$;
- a _transition function_ $delta:Q times Sigma -> 2^Q$;
- an _initial state_ $q_0 in Q$;
- a _set of finite states_ $F subset Q$.]

#definition[Let $A=(Q,Sigma,delta,q_0,F)$ be an NFA. The _extended transition function_ $delta^*:Q times Sigma^*->2^Q$ is defined recursively as follows:
- $forall q in Q,delta^* (q,epsilon)={q}$;
- $forall q in Q,forall w in Sigma^*, forall a in Sigma,delta^* (q,w a)=union.big_(q_1 in delta^* (q,w)) delta(q_1,a)$.]

#definition[Let $A=(Q,Sigma,delta,q_0,F)$ be an NFA. A state $q in Q$ is said to be:
- _accessible_ iff $exists w in Sigma^*,q in delta^*(q_0,w)$;
- _co-accessible_ iff $exists w in Sigma^*,delta^*(q,w) sect F != emptyset$.

The automaton $A$ is _trimmed_ iff all its states are accessible and co-accessible.]

#definition[Let $A=(Q,Sigma,delta,q_0,F)$ be an NFA.
- A word $w = w_0 dots w_(n-1) in Sigma^*$ is _accepted_ by $A$ iff $delta^*(q_0,w) sect F!=emptyset$.

- The _language accepted by_ $A$ is the set of words accepted by $A$.]

#remark[A DFA $(Q,Sigma,delta,q_0,F)$ can be trivially transformed into an NFA $(Q,Sigma,delta',q_0,F)$ with $delta' (q,a)={delta(q,a)}$ for all $q in Q$ et $a in Sigma$. These two automata have the same accepted languages.]

#theorem[Let $A=(Q,Sigma,delta,q_0,F)$ be an NFA. There exists a DFA over the same alphabet $Sigma$ that accepts the same language as $A$.]
#proof[We construct a DFA $B=(Q',Sigma,delta',q'_0,F')$ as follows:
- $Q'= 2^Q$;
- $delta'(q,a)=union.big_(q_1 in q) delta(q_1,a)$ for all $q in Q'$ and $a in Sigma$;
- $q'_0={q_0}$;
- $F'={q in Q';F sect q != emptyset}$.

Let's show by induction that for all $q in Q$ and $w in Sigma^*$, $delta^* (q,w)=delta'^* ({q},w)$.
- If $w=epsilon$ then $forall q in Q,delta^* (q,w)={q}=delta'^* ({q},w)$.
- Suppose the result holds for all $q$ if $w$ has length $n$. Then for all $q in Q$, $w$ of length $n$ and $a in Sigma$, we have $ delta^* (q,w a)=union.big_(q_1 in delta^* (q,w)) delta(q_1,a)=union.big_(q_1 in delta'^* ({q},w)) delta(q_1,a)=delta' (delta'^* ({q},w),a)=delta'^* ({q},w a) $ which completes the induction.

Now, for any word $w in Sigma^*$, $ w "is accepted by" A &<==> delta^* (q_0,w) sect F != emptyset \ &<==>delta'^* ({q_0},w) sect F != emptyset \ &<==> delta'^* (q'_0,w) in F \ &<==> w "is accepeted by" B $ which completes the proof.]

TODO

= Context-free grammars

== Definitions

#definition[A _context-free grammar (CFG)_ is a tuple $(Sigma,N,S,R)$ where:
- $Sigma$ is an alphabet, called the set of _terminal symbols_;
- $N$ is another alphabet, disjoint from $Sigma$, called the set of _nonterminal symbols_;
- $S in N$ is called the _initial symbol_;
- $R subset N times (Sigma union N)^*$ is a finite set of _production rules_.]

#definition[Let $G=(Sigma,N,S,R)$ be a CFG.
- $T -> alpha$ means that $(T,alpha) in R$.

- ]