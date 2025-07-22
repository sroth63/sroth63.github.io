const translations = {
    en: {
      h1: "Sascha Roth\'s website",
      who: "Who am I?",
      whoans: "I'm a French engineering student at Télécom Paris, Institut Polytechnique de Paris. I'm mainly interested in the intersection of mathematics and computer science, including cryptography, optimization algorithms, logic and data science.",
      math: "Mathematics and computer science",
      algebra: "Notes on abstract algebra (partly self-taught).",
      topo: "Notes on topology (partly self-taught).",
      primes: "Notes for a presentation on prime numbers I gave to middle school students.",
      llm: "Notes for a presentation on inference-time intervention in LLMs.",
      muirhead: "Complete proof of Muirhead's inequality.",
      fano: "Article on Dobble and finite projective planes that I wrote for the students' newsletter.",
      linkspan: "My accounts on",
      notes: "Reading notes",
      outdoors: "Outdoors",
      photos: "Outdoor pictures.",
      random: "Miscellaneous",
      concours: "Solutions of some competitive exams in math and computer science.",
      quotes: "My favorite quotes.",
      home: "Home page",
    },
    fr: {
      h1: "Site web de Sascha Roth",
      who: "Qui suis-je?",
      whoans: "Je suis étudiant en deuxième année à Télécom Paris. Je suis principalement intéressé par l'intersection entre les mathématiques et l'informatique, notamment la cryptographie, l'optimisation combinatoire, la logique et la science des données.",
      math: "Mathématiques et informatique",
      algebra: "Notes d'algèbre générale.",
      topo: "Notes de topologie.",
      primes: "Notes d'un exposé sur les nombres premiers que j'ai présenté à des collégiens.",
      llm: "Notes d'un exposé sur l'inference-time intervention dans les LLMs.",
      muirhead: "Preuve complète de l'inégalité de Muirhead.",
      fano: "Article sur le Dobble et les plans projectifs finis que j'ai écrit pour le journal étudiant de mon école.",
      linkspan: "Mes comptes sur",  
      notes: "Notes de lecture",
      outdoors: "Nature",
      photos: "Photos.",
      random: "Divers",
      concours: "Corrections de sujets de concours en mathématiques et informatique.",
      quotes: "Mes citations préférées.",
      home: "Accueil",
    }
  };

function setLanguage(lang) {
    // Optionally store the language choice (localStorage or cookie)
    localStorage.setItem('language', lang);
    
    document.documentElement.lang = lang;
  
    // Update all elements with the data-i18n attribute
    document.querySelectorAll('[data-i18n]').forEach(el => {
      const key = el.getAttribute('data-i18n');
      el.textContent = translations[lang][key];
    });
}
  
// Set the language on page load
document.addEventListener('DOMContentLoaded', () => {
const lang = localStorage.getItem('language') || 'en';
setLanguage(lang);
document.getElementById('lang-select').value = lang;
});

// Listen for changes in the language selector
document.getElementById('lang-select').addEventListener('change', (e) => {
setLanguage(e.target.value);
});
  