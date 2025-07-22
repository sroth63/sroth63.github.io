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

#text(20pt)[Databases]

_It seemed to me essential that some discipline be introduced into database design. I called it normalization because then President Nixon was talking a lot about normalizing relations with China. I figured that if he could normalize relations, so could I._
#align(right)[-- Edgar F. Codd (1923 - 2003)#footnote[In _A Fireside Chat: Interview with Dr. Edgar F. Codd_, DBMS Magazine 6, No. 13, December 1993.]]

#outline(indent:auto)

#bibliography[
- #link("https://www.inf.unibz.it/~franconi/teaching/2006/kbdb/Codd72a.pdf")[Edgar F. Codd, _Relational completeness of data base sublanguages_]
- #link("https://www.w3schools.com/sql/")[W3Schools]
]

= Theoretical aspects

//Opérateurs de l'algèbre relationnelle et leurs propriétés
//Calcul relationnel et théorème de Codd

== Relational algebra

#definition[- A _relation_ on the sets $D_1,dots,D_n$ is a subset of $product_(i=1)^n D_i$ (with $n >= 1$).

- $n$ is called the _degree_ of the relation. Relations of degree $1$ are called _unary_, degree $2$ _binary_, degree $3$ _ternary_, degree $n$ $n$_-ary_.

- The sets $D_1,dots,D_n$ on which the relation is defined are called its underlying _domains_.

- A _simple domain_ is a set all of whose elements are integers, or a set all of whose elements are floating-point numbers, or a set all of whose elements are character strings. A relation defined on simple domains alone is said to be _simple normal_. All of the relations considered below will be simple normal.

- A _compound domain_ is the cartesian product of a finite number of a finite number (say $k$) of simple domains ; $k$ is called the _degree_ of the compound domain.

- Two simple domains are _union compatible_ iff both are domains of integers, or both are domains of floating-point numbers, or both are domains of character strings. Two compound domains $D$ and $E$ are _union compatible_ iff they are of the same degree (say $m$) and for every $j in [|1,m|]$, the $j$-th simple domain of $D$ is union-compatible with the $j$-th simple domain of $E$. Two relations $R$ and $S$ are _union-compatible_ iff the compounds domains of which $R$ and $S$ are subsets are union-compatible.]

#definition[Let $R$ and $S$ be to relations of degrees $m$ and $n$ respectively.

- The _product_ of $R$ and $S$ is $R times.circle S := {r dot s;(r,s) in R times S}$ where $dot$ is the concatenation. $R times.circle S$ is a relation of degree $m+n$.
- _Union_ ($union$), _intersection_ ($sect$) and _difference_ $(back)$ of two relations are defined as the usual corresponding set-theoretic operations, except that they are applicable only to pairs of union-compatible relations.]

#definition[Suppose $r$ is an element of the $m$-ary relation $R$.

- For $j in [|1,m|]$, the notation $r[j]$ designates the $j$-th component of $r$. We extend the notation to a list $A=(j_1,dots,j_k) in [|1,m|]^k$ as follows: $r[A]=(r[j_1],dots,r[j_k])$.

- The projection of $R$ on $A$ is defined by $R[A]={r[A]:r in R}$.]

#example[We consider the relation $ R = {("a",2,"f"),("b",1,"g"),("c",3,"f"),("d",3,"g"),("e",2,"f")} $
- $R[1]={"a", "b", "c","d","e"}$
- $R[2]={2,1,3}$
- $R[3]={"f","g"}$
- $R[3,2]={("f",2),("g",1),("f",3),("g",3)}$
- $R[3,2,2]={("f",2,2),("g",1,1),("f",3,3),("g",3,3)}$]

#definition[Let $theta$ denote any of the relations $=$, $!=$, $<$, $<=$, $>$, and $>=$. The $theta$_-join_ of relation $R$ on domain $A$ with relation $S$ on domain $B$ is defined by $ R[A theta B] S={r dot s;(r,s) in R times S,r[A] theta s[B]} $ provided every element $x in R[A]$ is $theta$_-comparable_ with every element $y in S[B]$, that is $x theta y$ is either true or false (not undefined).]

#example[We consider the relations $ R={("a",1,1),("a",2,1),("b",1,2),("c",2,5),("c",3,3)} subset A times B times C \ S={(2,"u"),(3,"v"),(4,"u")} subset D times E $
- $R[C=D]S={("b",1,2,"u"),("c",3,3,3,v)}$
- $R[B=D]S={("a",2,1,2,"u"),("c",2,5,2,"u"),("c",3,3,3,"v")}$
- $R[C>D]S={("c",3,3,2,"u"),("c",2,5,2,"u"),("c",2,5,3,"v"),("c",2,5,4,"u")}$]

#remark[$R[C< D] union R[C=D] union R[C> D]=R times.circle S$]

#definition[The join on $=$ is called _equi-join_. In the case of the equi-join, two of the domains of the resulting relation are identical in content. If one of the redundant domains is removed by projection, the result is the _natural join_ of the given relations.]

#definition[- Suppose $T$ is a binary relation. The _image set_ of $x$ under $T$ is defined by $g_T (x):={y;(x,y) in T}$.

- Consider two relations $R$ and $S$ of degrees $m$ and $n$ respectively. Let $A$ be a domain-identifying list (without repetitions) for $R$, and let $ov(A)$ denote the domain-identifying list that is complementary to $A$ and in ascending order. For example, if $m=5$ and $A=(2,5)$ then $ov(A)=(1,3,4)$. We treat $R$ as if it were a binary relation with the (possibly compound) domains $ov(A)$, $A$ in that order. Accordingly, given $r in R$, we can speak of the image set $g_R (r[ov(A)]) subset R[A]$.

- Provided $R[A]$ and $S[B]$ are union-compatible, the _division_ of $R$ on $A$ by $S$ on $B$ is defined by $R[A slash B] S:={r[ov(A)];r in R, S[B] subset g_R (r[ov(A)])}$]

#example[We consider the relations $ R={(1,11,"x"),(2,11,"y"),(3,11,"z"),(4,12,"x")} subset A times B times C \ S={("x",1),("x",2),("y",1)} subset D times F $
- $R[C slash D]S=emptyset$
- $R[B,C][C slash D]S={11}$]

#remark[Division is actually definable in terms of the operations already introduced: $ R[C slash D]=R[ov(C)] back ((R[ov(C)] times.circle S[D]) back R)[ov(C)] $]

#definition[Suppose $R$ is a relation and $A$, $B$ are domain-identifying lists for $R$. Let $theta$ denote any of the relations $=$, $!=$, $<$, $<=$, $>$, and $>=$. The $theta$_-restriction_ of $R$ on domains $A$, $B$ is defined by $ R[A theta B]:={r  in R;r[A] theta r[B]} $ providing every element of $R[A]$ is $theta$-comparable with every element of $R[B]$.]

#example[We consider the relation $ R={("p",2,1),("q",2,3),("q",5,4),("r",3,3)} subset A times B times C $
- $R[B=C]={("r",3,3)}$
- $R[B > C]={("p",2,1),("q",5,4)}$]

#remark[The $theta$-restriction is definable in terms of the $theta$-join: $ R[A theta B]=(R[A dot B=A dot B](R[A][A theta B]R[B]))[L] $

Likewise, the $theta$-join is definable in terms of cartesion product and $theta$-restriction: $ R[A theta B]S=(R times.circle S)[A theta B] $]

#example[TODO]

== Relational calculus

== Codd's theorem

== Entity-relationship model
//On s'intéresse au modèle entité-association au travers de cas concrets d'associations 1-1, 1-*, *-*. Séparation d'une association *-* en deux associations 1-*. L'utilisation de clés primaires et de clés étrangères permet de traduire en SQL les associations 1-1 et 1-*. Même si aucun formalisme précis n'est au programme, on peut décrire les entités et les associations qui les lient au travers de diagrammes sagittaux informels

Entity-relationship model are a general model to present the logical schema of an application. It describes data as:
- _entities_ (things in the real world with an independent existence),
- _attributes_ (particular properties that describe entities),
- _relationships_ between the entities.

= SQL

== ```sql SELECT``` queries

SQL (Structured Query Language) is a language used to manage structured data. It's originally based upon relational algebra and relation calculus.

```sql SELECT``` queries allow to retrieve data. Here's a basic example:

```sql
SELECT col1 AS myFancyCol, col2, col3
FROM myTable
```

Here, `myTable` is a table (that is, a relation) that contains the attributes (that is, the columns) `col1`, `col2` and `col3`. The first columns has been renamed to `myFancyCol`.

To select all the columns, one can write

```sql
SELECT *
FROM myTable
```

It is possible to perform operations on the selected columns. The query below will retrieve $3$ columns, one containing the triple of the values of `myCol`, one containing the quotient of the value of `myCol` by the corresponding value of `someOtherCol`, and the last one always containing ```sql "hello"```.

```sql
SELECT myCol*3, myCol/someOtherCol, "hello"
FROM myTable
```

The basic operators for integers and floats are ```sql +```, ```sql -```, ```sql *``` and ```sql /```.

Here's how to add conditions to lines that are selected:

```sql
SELECT *
FROM myTable
WHERE myIntCol > 42
```

== Joins

== Aggregates

== Table creation and modification
//Création, suppression, modification de tables au travers du langage de requêtes SQL.

Here's how to create tables:

```sql
CREATE TABLE Player(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  money FLOAT
);

CREATE TABLE Item(
  id SERIAL PRIMARY KEY,
  type VARCHAR,
  owner INT REFERENCES Player,
  price FLOAT CHECK (price >= 0 or price IS NULL)
);
```

One can also create a table using an existing table:

```sql
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers; 
```

Then you can insert lines to the table:

```sql
INSERT INTO player VALUES (1, 'Alice', 100);
INSERT INTO player VALUES (2, 'Bob', 50);
INSERT INTO player VALUES (3, 'Charlie', 42);
INSERT INTO item VALUES (1, 'Magical Flower', 2, NULL);
INSERT INTO item VALUES (2, 'Magical Flower', 2, 10);
INSERT INTO item VALUES (3, 'Magical Flower', 3, 10);
INSERT INTO item VALUES (4, 'Gem', 1, true, 100);
```

Here's how to update a table (without the ```sql WHERE```, all lines of the table would be modified):

```sql
UPDATE Customers
SET ContactName = 'Edgar F. Codd', City= 'San Jose'
WHERE CustomerID = 1;
```

It's possible to delete lines using the ```sql DELETE``` statement:

```sql
 DELETE FROM Customers
 WHERE CustomerName = 'Edgar F. Codd';
 ```

and to delete an entire table using the ```sql DROP``` statement:

```sql
DROP TABLE Customers; 
```