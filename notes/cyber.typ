Notes basées sur #link("https://www.youtube.com/playlist?list=PLtzmb84AoqRQkOtUUTcfwPCOIEiHqyXNz")[la série de vidéos sur la cybersécurité] par Science4All

= Principes de la cybersécurité

- Cybercrime : coûts sur la société estimés à 11 T\$ en 2023 (4x le PIB de la France)
- Toutes les organisations sont déjà attaquées (mais pas forcément de dégâts visibles)
- Défense en profondeur : image du fromage suisse : aucune couche ne doit être considérée comme incontournable, donc il faut empiler les défenses. Si les risques de chaque couche sont iid, le risque total diminue exponentiellement
- Redondance et diversification (ex : utiliser des mots de passes différents, ne pas sauvegarder toute les données en un seul endroit, ne pas permettre l'accès aux sauvegards à une machine utilisée pour autre chose)
- Monitoring : il faut constamment avoir accès et analyser toutes sortes d'opérations sur les machines
- Limiter les droits de chaque composant aux moindres privilèges
- *Réduire la surface d'attaque (sobriété numérique)*
- *Former* : le grand public / les collègues doivent avoir conscience des enjeux
- Réponses sociétales : augmenter les exigences légales pour les produits commercialisés, favoriser les logiciels libres et open-source

= Superintelligences

- Définition standard de l'intelligence : capacité à résoudre des tâches. Selon cette définition, il existe déjà de nombreuses superintelligences : Google, gouvernement chinois, la société toute entière,... (cf. veste de laine)
- Certaines superintelligences ont déjà été très néfastes : guerre, industries du sucre et du tabac, entreprises pétrolières, Big Techs,...
- Lois : outils extrêmement puissants pour combattre les superintelligences. Mais les systèmes juridiques sont aussi des superintelligences en tant que telles.
- Superintelligences numériques : pas très différentes des superintelligences classiques, mais deux spécificités :
  - difficile à réguler
  - tout va très vite
- Cryptographie : permet de se protéger des superintelligences numériques avec des garanties mathématiques :
  - quorums de machines / logiciels corrects : sous-ensembles de machines / logiciels qui peuvent mettre en œuvre le protocole, même si tout le reste a été attaqué par une superintelligence
  - bits de sécurité informationnelle : log(probabilité de faille)
  - bits de sécurité calculatoire : log(nombre de calculs pour casser le protocole)

= Complexité

- Si P != NP, les superintelligences sont fondamentalement limitées (probablement même avec des ordinateurs quantiques)
- Classe IP (Interactive Proof) : problèmes de décision tels que :
  - Si la réponse est "oui", un prouveur arbitrairement puissant est capable de convaincre avec grande probabilité le vérificateur que la réponse est "oui", après un nombre au plus polynomial d'échanges
  - Si la réponse est "non", aucun prouveur ne peut convaincre le vérificateur que la réponse est "oui", sauf avec une petite probabilité
- On a montré que IP = PSPACE, et on suspecte que NP est strictement inclus dans IP (ex des jeux de plateaux : pas clair que ce soit dans NP, mais une superintelligence pourrait nous convaincre qu'elle possède la stratégie optimale)
- Classe MIP (Multiprover IP) : le vérificateur peut interroger plusieurs prouveurs qui ne peuvent pas communiquer entre eux. On a montré que MIP = NEXPTIME (problème de recherche dont la vérification est possible en temps exponentiel), et que NP est strictement inclus dans MIP
- Classe IOP (Interactive Oracle Protocol) : le vérificateur peut laisser parler le prouveur très longtemps sans perdre de temps (wtf)
- En général, dans les protocoles IP, MIP et IOP, le vérificateur exploite le hasard, ce qui fait que le prouveur ne peut pas anticiper les propos du vérificateur
- Transformation de Fiat-Shamir : on peut transformer n'importe quel protocole IP, MIP ou IOP en protocole sans interaction (SNARK : Succinct Non-interactive ARgument of Knowledge)
- Spécificités des SNARK par rapport aux problèmes NP :
  - En général, le SNARK est beaucoup plus court que la preuve du problème NP
  - Le SNARK n'est valide qu'avec très grande probabilité (pas très grave en pratique)
  - Le SNARK n'est valide que si les prouveurs l'ont produit avec une puissance de calcul limitée (pas très grave en pratique)
 
= Logarithme discret

- La cryptographie repose systématiquement sur la génération d'un secret w, suivi de la conception d'un problème difficile x dont w est la solution
- Souvent : x = g^w dans Z/pZ, où g est une racine primitive modulo p. Mais il faut bien choisir p :
  - Si p-1 s'écrit comme un produit de petits nombres premiers, on peut retrouver w efficacement (algorithme de Pohlig-Hellman, complexité de l'ordre de la racine carrée du plus grand fecteur premier de p-1)
  - Du coup, on choisit un nombre premier p tel que (p-1)/2 est aussi premier (nombre premier sûr). Dans ce cas, on pense que c'est une fonction à sens unique.
- Avantages du logarithme discret :
  - (g^w)^v = g^wv : utile pour le protocole de Diffie-Hellman (création d'un secret partagé)
  - g^w g^v = g^(w+v) : utile pour la signature El Gamal
- Problème : le logarithme discret pourra être résolu efficacement par les ordinateurs quantiques (transformée de Fourier quantique)

= Corps finis

- Construction des corps finis
- Encodage des éléments d'un corps finis :
  - On peut utiliser F2^n et représenter les éléments par n bits. L'addition se fait bit à bit, la multiplication se fait comme d'habitude, en réduisant le résultat à la fin
  - En pratique, on utilise plutôt F(2^r-c)

= Codes correcteurs

- Codes de Reed-Solomon, application au jeu de Qui est-ce avec 1 mensonge autorisé
- Variante : codes de Reed-Muller : un peu comme les codes de Reed-Solomon avec des polynômes à plusieurs indéterminées

= Courbes elliptiques

- Définition des courbes elliptiques et de l'addition de points
- Logarithme discret sur les courbes elliptiques : considéré comme à sens unique
- Pour la même sécurité, clés 10x plus petites que RSA
- On peut faire Diffie-Hellman et El Gamal
- Backdoor de la NSA : le NIST a proposé un algo de rng en 2012. L'algo est étrange et présenté sans justification. Il n'a pas été adopté.

= Cryptographie post-quantique

- Les calculateurs quantiques permettent de résoudre le logarithme discret, donc la crypto classique ne fonctionne plus.
- Crypto quantique : requiert du matériel spécialisé, compliqué sur le court terme
- Crypto post-quantique : le NIST a publié un standard en 2024, basé sur les réseaux. On n'est pas sûr que ça marche mais on a rien de mieux.
- Idée de base : x = G w où G est une matrice, w est le secret et x est le message. Mais on peut facilement inverser G, donc on prend plutôt x = G w + erreur (learning with errors)
- On peut aussi faire des signatures post-quantique