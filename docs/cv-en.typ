
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
      "Student in theoretical computer science and applied mathematics",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "fr",
  colored-headers: true,
  show-footer: true,
  paper-size: "a4",
)

Passionate CS and math student at Télécom Paris with a *4.0 GPA* and *hands-on research*.

Proven problem-solver with *300+ algorithmic challenges solved* and a track record of secure and efficient programming in Python and C++.

Bringing strong research rigor and coding depth to *cutting-edge R&D*.

= 🎓 Education

#resume-entry(
  description: "Télécom Paris, Institut Polytechnique de Paris",
  location: "Palaiseau, France",
  date: "September 2023 - August 2027",
  title: "Engineering degree (Master's equivalent)",
)

#resume-item[
  - Majors: Applied Algebra & Theoretical CS | Minor: Data Science | GPA : 4.0/4.0
  - Research Project: Benchmarked cryptographic primitives for zero-knowledge signature protocols. Contribution to the website #link("https://zka.lc")[zka.lc].
  - Engineering Project: Built a small self-driving car using a Raspberry Pi, integrating Python control systems, web interface for remote driving, and robust Git/Linux workflows in a collaborative team setting.
  - Relevant coursework: Cryptography, Complexity Theory, Advanced Algorithms, Formal Verification, Quantum Technologies, Mathematical Optimization.
]

#resume-entry(
  description: "Lycée Blaise Pascal",
  location: "Clermont-Ferrand, France",
  date: "September 2021 - June 2023",
  title: "Preparatory Class (Math / CS / Physics)",
)

#resume-item[
  - Project: Braess's Paradox Simulation. Modeled a city's road network as a graph and implemented Pythons algorithm to simulate and optimize traffic flows, demonstrating how adding roads can paradoxically worsen congestion.
]


= 🔬 Experience

#resume-entry(
  title: "Research Intern, Cryptography",
  location: "Palaiseau, France",
  date: "August - December 2025",
  description: "Télécom Paris, Institut Polytechnique de Paris"
)

#resume-item[
  - Designing and implementing a post-quantum signature protocol under supervision of Matthieu Rambaud.
  - Focus: Practical efficiency, security assumptions, and benchmarking.
]

#resume-entry(
  title: "Independent Programming Projects",
)

#resume-item[
- Solved 300+ problems across CryptoHack, Project Euler, CSES — ranked top 0.7% (CryptoHack leaderboard).
- Personal / portfolio website: #link("https://sroth63.github.io")[sroth63.github.io]. Includes problem writeups and technical notes.]

#resume-entry(
  title: "Mountain Refuge Assistant",
  location: "Saint-Martin, Switzerland",
  date: "July - August 2024",
  description: "Cabane des becs de Bosson"
)

#resume-item[
- Personal development training as part of my studies at Télécom Paris.]

= 🛠 Skills

#resume-skill-item("Languages", ("French (native)", "English (fluent)", "German (advanced)"))
#resume-skill-item(
  "Programming",
  ("Python (SageMath)", "C", "C++", "Java", "HTML", "CSS", "JavaScript", "SQL", "Rocq"),
)
#resume-skill-item(
  "Tools",
  ("Linux", "Git", "LaTeX", "Typst"),
)