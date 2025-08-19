#set text(lang:"fr")
#let default-accent-color = rgb("#262F99")
#show link: set text(default-accent-color)

#import "@preview/modern-cv:0.8.0": *

#show: resume.with(
  author: (
    firstname: "Sascha",
    lastname: "Roth",
    email: "sascha.roth@telecom-paris.fr",
    homepage: "https://sroth63.github.io",
    //phone: "(+1) 111-111-1111",
    github: "sroth63",
    //scholar: "",
    //orcid: "0000-0000-0000-000X",
    //birth: "January 1, 1990",
    linkedin: "roth-sascha/",
    //address: "111 Example St. Example City, EX 11111",
    positions: (
      "Étudiant en école d'ingénieurs",
      "Spécialisé en cryptographie et informatique théorique",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "fr",
  colored-headers: true,
  show-footer: true,
  paper-size: "a4",
)


= Formation

#resume-entry(
  description: "Télécom Paris (Institut Polytechnique de Paris)",
  location: "Palaiseau",
  date: "Septembre 2023 - Août 2027",
  title: "École d'ingénieurs",
)

#resume-item[
  - Filières ACCQ (algèbre, communications et calcul quantique) et MITRO (mathématiques, informatique théorique et recherche opérationnelle)
  - Mineure en science des données
  - Projet : benchmarks de primitives cryptographiques pour un protocole zero-knowledge
  - GPA : 4 / 4
  - Cours : fondements de l'informatique, logique et théorie de la preuve, vérification formelle, théorie de la complexité, algorithmique avancée, structures de données, algèbre générale, algorithmes pour l'algèbre, introduction à la géométrie algébrique, cryptographie, technologies quantiques, théorie de l'information, codes correcteurs d'erreurs, théorie des jeux, optimisation combinatoire et continue, théorie de la mesure et probabilités, statistiques, machine learning, bases de données,...
]

#resume-entry(
  description: "Lycée Blaise Pascal",
  location: "Clermont-Ferrand",
  date: "Septembre 2021 - Juin 2023",
  title: "Classes préparatoires MPSI / MP*",
)

#resume-item[
  - Formation intensive en mathématiques, physique et informatique
  - Option informatique
  - TIPE : projet sur le paradoxe de Braess (théorie algorithmique des jeux)
]

#resume-entry(
  description: "Lycée Godefroy de Bouillon",
  location: "Clermont-Ferrand",
  date: "Septembre 2018 - Juin 2021",
  title: "Lycée général",
)

#resume-item[
  - Baccalauréat mention très bien (17.6 / 20)
  - Spécialités mathématiques, physique-chimie et sciences de l'ingénieur
  - Section européenne
]

= Expériences professionnelles

#resume-entry(
  title: "Stage de recherche en cryptographie",
  location: "Palaiseau",
  date: "Août - Décembre 2025",
  description: "Télécom Paris (Institut Polytechnique de Paris)"
)

#resume-item[
  Design et implémentation d'un protocole de signature à base de réseaux

  Encadrant : Matthieu Rambaud
]

#resume-entry(
  title: "Aide-gardien en refuge de montagne",
  location: "Saint-Martin, Suisse",
  date: "Juillet - Août 2024",
  description: "Cabane des becs de Bosson"
)

#resume-item[
  Stage de formation humaine réalisé dans le cadre de mon cursus à Télécom Paris
]


= Projets personnels

#resume-entry(
  title: "CryptoHack",
)

#resume-item[
Parmi les 700 meilleurs utilisateurs (parmi $>$ 100 k) sur la plateforme CryptoHack]

#resume-entry(
  title: "Page web personnelle",
)

#resume-item[
Page web personnelle / portfolio : #link("https://sroth63.github.io")[sroth63.github.io]]

= Compétences

#resume-skill-item("Langues", ("Français (natif)", "Anglais (C1)", "Allemand (B2)"))
#resume-skill-item(
  "Programmation",
  ("Python (dont SageMath)", "C", "C++", "OCaml", "Java", "HTML", "CSS", "JavaScript", "SQL", "Rocq"),
)
#resume-skill-item(
  "Outils",
  ("Linux", "Git", "LaTeX", "Typst"),
)