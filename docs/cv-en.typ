
#import "@preview/modern-cv:0.8.0": *
#let default-accent-color = rgb("#262F99")
#show link: set text(default-accent-color)


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
    linkedin: "roth-sascha",
    //address: "111 Example St. Example City, EX 11111",
    positions: (
      "Student in cryptography and theoretical computer science",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "fr",
  colored-headers: true,
  show-footer: true,
  paper-size: "a4",
)


= Education

#resume-entry(
  description: "Télécom Paris (Institut Polytechnique de Paris)",
  location: "Palaiseau, France",
  date: "September 2023 - August 2027",
  title: "Engineering school",
)

#resume-item[
  - Leading French institution in computer science, equivalent to a master's degree
  - Majors in applied algebra and theoretical computer science
  - Minor in data science
  - Project: benchmarking cryptographic primitives for a zero-knowledge signature protocol
  - GPA: 4 / 4
  - Courses: foundations of computer science, logic and proof theory, formal verification, complexity theory, advanced algorithms, advanced data structures, abstract algebra, computer algebra, introduction to algebraic geometry, cryptography, quantum technologies, information theory, error-correcting codes, game theory, combinatorial optimization, continuous optimization, measure theory and probability theory, statistics, machine learning, databases, Fourier analysis,...
]

#resume-entry(
  description: "Lycée Blaise Pascal",
  location: "Clermont-Ferrand, France",
  date: "September 2021 - June 2023",
  title: "Preparatory class",
)

#resume-item[
  - Intensive training in mathematics, physics and computer science
  - Project: Braess's paradox (algorithmic game theory)
]

#resume-entry(
  description: "Lycée Godefroy de Bouillon",
  location: "Clermont-Ferrand, France",
  date: "September 2018 - June 2021",
  title: "High school",
)

#resume-item[
  - _Baccalauréat_: with honors (17.6 / 20)
  - Specializations: mathematics, physics and chemistry, engineering
  - European section
]

= Experience

#resume-entry(
  title: "Research internship in cryptography",
  location: "Palaiseau, France",
  date: "August - December 2025",
  description: "Télécom Paris (Institut Polytechnique de Paris)"
)

#resume-item[
  Design and implementation of a lattice-based signature protocol

  Supervisor: Matthieu Rambaud
]

#resume-entry(
  title: "Mountain refuge assistant",
  location: "Saint-Martin, Switzerland",
  date: "July - August 2024",
  description: "Cabane des becs de Bosson"
)

#resume-item[
Personal development training as part of my studies at Télécom Paris]

= Personal projects

#resume-entry(
  title: "CryptoHack",
)

#resume-item[
Among the top 700 players (among $>$ 100 k) on the platform CryptoHack]

#resume-entry(
  title: "Personal website",
)

#resume-item[
Personal / portfolio website: #link("https://sroth63.github.io")[sroth63.github.io]]

= Skills

#resume-skill-item("Languages", ("French (native)", "English (fluent)", "German (advanced)"))
#resume-skill-item(
  "Programming",
  ("Python (SageMath, NumPy)", "OCaml", "C", "Java", "HTML", "CSS", "JavaScript", "SQL", "Rocq"),
)
#resume-skill-item(
  "Tools",
  ("Linux", "Git", "LaTeX", "Typst"),
)