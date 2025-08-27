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
      "Spécialisé en informatique théorique et mathématiques appliquées",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "fr",
  colored-headers: true,
  show-footer: true,
  paper-size: "a4",
)
\
Étudiant passionné en mathématiques et informatique à Télécom Paris (*GPA 4.0/4.0*), avec une expérience pratique.

Résolveur confirmé de problèmes avec *300+ défis algorithmiques résolus*, et une expertise en programmation sûre et efficace en Python et C++.

Apporte rigueur de recherche et solides compétences de programmation pour *contribuer à la R&D*.

= 🎓 Formation

#resume-entry(
  description: "Télécom Paris, Institut Polytechnique de Paris",
  location: "Palaiseau",
  date: "Septembre 2023 - Août 2027",
  title: "École d'ingénieurs",
)

#resume-item[
  - Majeures : Algèbre appliquée & Informatique théorique | Mineure : Science des données | GPA: 4.0/4.0
  - Projet de recherche : Benchmarks de primitives cryptographiques pour des protocoles de signature zero-knowledge. Contribution au site #link("https://zka.lc")[zka.lc].
  - Projet d'ingénierie : Construction d'une petite voiture autonome avec une Raspberry Pi. Développement de systèmes de contrôle en Python et d'une interface web pour la commande à distance. Travail d'équipe avec utilisation de Git et Linux.
  - Cours pertinents : Cryptographie, Théorie de la complexité, Algorithmique avancée, Vérification formelle, Technologies quantiques, Optimisation mathématique.
]

#resume-entry(
  description: "Lycée Blaise Pascal",
  location: "Clermont-Ferrand",
  date: "Septembre 2021 - Juin 2023",
  title: "Classes préparatoires MPSI / MP*",
)

#resume-item[
  - Formation intensive en mathématiques, informatique et physique-chimie.
  - TIPE : projet de simulation du paradoxe de Braess. Modélisation du réseau routier d'une ville à l'aide d'outils de la théorie des graphes. Implémentation d'algorithmes en Python pour simuler et optimiser le trafic routier.
]

= 🔬 Expérience

#resume-entry(
  title: "Stage de recherche en cryptographie",
  location: "Palaiseau",
  date: "Août - Décembre 2025",
  description: "Télécom Paris, Institut Polytechnique de Paris"
)

#resume-item[
  - Design et implémentation d'un protocole de signature post-quantique. Encadré par Matthieu Rambaud.
  - Focus sur l'efficacité, la sécurité et le benchmarking.
]

#resume-entry(
  title: "Projets personnels de programmation",
)

#resume-item[
- 300+ problèmes résolus sur CryptoHack, Project Euler, CSES — classé dans le top 0.7% sur CryptoHack.
- Page web personnelle / portfolio: #link("https://sroth63.github.io")[sroth63.github.io]. Contient des solutions de problèmes et des notes techniques.]

#resume-entry(
  title: "Aide-gardien en refuge de montagne",
  location: "Saint-Martin, Suisse",
  date: "Juillet - Août 2024",
  description: "Cabane des becs de Bosson"
)

#resume-item[
  - Stage de formation humaine réalisé dans le cadre de mon cursus à Télécom Paris.
]


= 🛠 Compétences

#resume-skill-item("Langues", ("Français (natif)", "Anglais (C1)", "Allemand (B2)"))
#resume-skill-item(
  "Programmation",
  ("Python (dont SageMath)", "C", "C++", "OCaml", "Java", "HTML", "CSS", "JavaScript", "SQL", "Rocq"),
)
#resume-skill-item(
  "Outils",
  ("Linux", "Git", "LaTeX", "Typst"),
)