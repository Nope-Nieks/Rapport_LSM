# Universal Master Thesis Template (UCLouvain - LSM)
*(Le lisez-moi en français se trouve plus bas / French version below)*

This project provides a complete LaTeX environment for writing master's theses and graduation projects. It automates the creation of front/back covers, preliminary pages (acknowledgments, abstract), and the main body of the text, while respecting UCLouvain's graphical standards.

**Credits & Sources:**
* **Original source:** École polytechnique de Louvain (EPL).
* **Adaptation and Universalization:** Nicolas Nopenaire
* **AI Assistance:** Code optimization and template structuring were realized with the help of Google Gemini.

---

## Technical Instructions

### 1. Compiler Configuration
To use the **Arial** font natively, you **MUST** compile this document with **XeLaTeX**.
* On **Overleaf**: Menu (top left) > Compiler > Choose "XeLaTeX".
* Locally: Ensure your LaTeX distribution is up to date.

### 2. Project Structure
* `main.tex`: Your control center. This is where you fill in your information.
* `univ-thesis.cls`: The layout engine (Document class).
* `images/`: Folder containing the background banners (`frontbanner.pdf` and `backbanner.pdf`).
* `pages/`: Folder for the Abstract, Acknowledgments, etc.
* `chapitres/`: Folder for the main body of the text (Intro, Chapters, Conclusion).

---

## Official Titles (LSM)

For a compliant cover page, copy/paste the following titles into your `main.tex`.

### 1. Degrees (`\degreetitle`)
* Master [120] in Business Engineering, professional focus
* Master [120] in Management, professional focus
* Master [60] in Management
* Master [120] en Ingénieur de gestion, à finalité spécialisée
* Master [120] en Sciences de gestion, à finalité spécialisée
* Master [60] en Sciences de gestion

### 2. Majors / Specializations (`\myfocus`)

**For Business Engineering (Ingénieur de gestion):**
* *Mons:* Majeure Business Analytics, Majeure Business Analytics and Digital Marketing, Majeure Finance et Transition, Majeure Décisions marketing tactiques et digitales, Majeure "i carré", Majeure Transportation Management (Mons) and Supply Chain (LLN).
* *LLN:* Majeure Supply Chain Management, Majeure Innovation Management, Majeure International Finance, Majeure Financial Engineering, Majeure Marketing Strategy for Connected Brands, INEO - Formation interdisciplinaire en entrepreneuriat, Majeure International Business, Majeure Philippe de Woot en Corporate Sustainable Management, Majeure Energy Management.

**For Management (Sciences de gestion):**
* *Mons:* Majeure Finance et Transition, Majeure Révisorat et expertise comptable, Majeure Décisions marketing tactiques et digitales.
* *LLN:* INEO - Formation interdisciplinaire en entrepreneuriat, Majeure International Business, Majeure International Finance, Majeure Marketing Strategy for Connected Brands, Majeure Philippe de Woot en Corporate Sustainable Management.

---

## Formatting Rules

1.  **Names:** First name written normally, LAST NAME in small caps (e.g., `Firstname \textsc{Lastname}`).
2.  **Language:** To switch the entire template to english, uncomment `\selectlanguage{english}` in `main.tex`.
3.  **Order:** In the case of multiple authors or supervisors, alphabetical order is customary.
4.  **Singular/Plural:** The template automatically detects if you have one or multiple authors/supervisors and adjusts the "Author(s)" or "Supervisor(s)" labels accordingly.

---

**Legal Note:** This template is a formatting aid. The graphical banners and logos remain the exclusive property of UCLouvain.

<br>
<br>

---
---

# Template de Mémoire Universel (UCLouvain - LSM)

Ce projet propose un environnement LaTeX complet pour la rédaction de mémoires et de travaux de fin d'études. Il automatise la création des couvertures avant/arrière, des pages liminaires (remerciements, résumé) et du corps du texte, le tout en respectant les standards graphiques de l'UCLouvain.

**Crédits & Sources :**
* **Source originale :** École polytechnique de Louvain (EPL).
* **Adaptation et Universalisation :** Nicolas Nopenaire
* **Assistance IA :** L'optimisation du code et la structuration de ce template ont été réalisées avec l'aide de Google Gemini.



---

## Instructions Techniques

### 1. Configuration du Compilateur
Pour utiliser la police **Arial** nativement, vous **DEVEZ** compiler ce document avec **XeLaTeX**.
* Sur **Overleaf** : Menu (en haut à gauche) > Compiler > Choisir "XeLaTeX".
* En local : Assurez-vous que votre distribution LaTeX est à jour.

### 2. Structure du Projet
* `main.tex` : Votre centre de contrôle. C’est ici que vous remplissez vos infos.
* `univ-thesis.cls` : Le moteur de mise en page (Classe document).
* `images/` : Dossier contenant les bannières de fond (`back-frontbanner-1.pdf` et `2`).
* `pages/` : Dossier pour l'Abstract, les Remerciements, etc.
* `chapitres/` : Dossier pour le corps du texte (Intro, Chapitres, Conclusion).

---

## Intitulés Officiels (LSM)

Pour une page de garde conforme, copiez/collez les intitulés suivants dans votre `main.tex`.

### 1. Diplômes (`\degreetitle`)
* Master [120] en Ingénieur de gestion, à finalité spécialisée
* Master [120] en Sciences de gestion, à finalité spécialisée
* Master [60] en Sciences de gestion
* Master [120] in Business Engineering, professional focus
* Master [120] in Management, professional focus

### 2. Majeures / Spécialisations (`\myfocus`)

**Pour les Ingénieurs de gestion :**
* *Mons :* Majeure Business Analytics, Majeure Business Analytics and Digital Marketing, Majeure Finance et Transition, Majeure Décisions marketing tactiques et digitales, Majeure "i carré", Majeure Transportation Management (Mons) and Supply Chain (LLN).
* *LLN :* Majeure Supply Chain Management, Majeure Innovation Management, Majeure International Finance, Majeure Financial Engineering, Majeure Marketing Strategy for Connected Brands, INEO - Formation interdisciplinaire en entrepreneuriat, Majeure International Business, Majeure Philippe de Woot en Corporate Sustainable Management, Majeure Energy Management.

**Pour les Sciences de gestion :**
* *Mons :* Majeure Finance et Transition, Majeure Révisorat et expertise comptable, Majeure Décisions marketing tactiques et digitales.
* *LLN :* INEO - Formation interdisciplinaire en entrepreneuriat, Majeure International Business, Majeure International Finance, Majeure Marketing Strategy for Connected Brands, Majeure Philippe de Woot en Corporate Sustainable Management.

---

## Règles de Rédaction

1.  **Noms :** Le prénom s'écrit normalement, le NOM en petites capitales (ex: `Prénom \textsc{Nom}`).
2.  **Langue :** Pour passer tout le template en anglais, décommentez `\selectlanguage{english}` dans le `main.tex`.
3.  **Ordre :** En cas d'auteurs ou de promoteurs multiples, respectez l'ordre alphabétique.
4.  **Singulier/Pluriel :** Le template détecte automatiquement si vous avez un ou plusieurs auteurs/superviseurs et ajuste les mentions "Author(s)" ou "Supervisor(s)".

---

**Note Légale :** Ce template est un outil d'aide à la mise en page. Les bannières graphiques et les logos restent la propriété exclusive de l'UCLouvain.