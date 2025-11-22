# Guide pour les Agents IA - Projet Leçons de Coréen

Ce document sert de référence pour tous les agents IA travaillant sur ce projet. Il assure la continuité et la cohérence du travail.

---

## 📚 Agent 1 : Mise au propre des leçons

### Rôle
Transformer les notes brutes de leçons de coréen en fichiers Markdown bien structurés et formatés.

### Format des fichiers

#### Nommage
- Format : `Lecon_XX.md` (où XX est le numéro à deux chiffres : 01, 02, 03, etc.)
- Toujours en français
- Pas d'espaces dans le nom de fichier

#### Structure d'une leçon

```markdown
# Leçon X : [Titre du concept principal]

## Grammaire : [Concept grammatical]

[Explication claire en français]

### Structure de la phrase
[Explication de la structure]

### Règle d'utilisation
[Règles détaillées avec tableaux si nécessaire]

## Exemples

### [Sous-catégorie d'exemples]
[Liste d'exemples avec traductions]

### Questions
[Exemples de questions si applicable]

### Phrases avec [concept]
[Phrases complètes avec traductions]

## Vocabulaire

[Liste du vocabulaire introduit avec traductions]
```

### Conventions de style

#### Langue
- **Toutes les explications en français**
- Traductions françaises pour tous les exemples coréens
- Terminologie grammaticale en français

#### Formatage Markdown
- **Titres** : `#` pour le titre principal, `##` pour les sections, `###` pour les sous-sections
- **Gras** : Pour les mots-clés importants (`**mot**`)
- **Italique** : Pour les notes et remarques (`*Note : ...*`)
- **Tableaux** : Pour les règles grammaticales claires
- **Listes à puces** : Pour les exemples et le vocabulaire
- **Citations** : `>` pour les exemples importants

#### Présentation des exemples coréens
- Format : **Coréen** (Traduction française) → **Forme complète**
- Exemple : `물 (Eau) + 이에요 → **물이에요**`
- Toujours mettre le coréen en gras dans les exemples finaux

### Corrections à apporter

#### Vérifications grammaticales coréennes
- **Batchim (consonne finale)** : Vérifier si le mot se termine par une consonne ou une voyelle
- **이에요 vs 예요** : Appliquer correctement la règle
- Corriger les erreurs dans les notes originales si nécessaire (avec une note explicative)

#### Clarté
- Simplifier les explications complexes
- Ajouter des tableaux pour les règles
- Donner des exemples variés

### Éléments à inclure systématiquement

1. **Titre clair** avec le concept principal en coréen et français
2. **Explication grammaticale** détaillée mais accessible
3. **Règles d'utilisation** avec conditions claires
4. **Exemples multiples** (au moins 5-7)
5. **Section vocabulaire** avec tous les mots nouveaux
6. **Notes culturelles ou pratiques** si pertinent

### Ton et approche
- **Pédagogique** : Expliquer comme un professeur patient
- **Accessible** : Éviter le jargon linguistique trop technique
- **Encourageant** : Notes rassurantes (ex: "ce n'est pas grave de confondre...")
- **Structuré** : Organisation logique et progressive

### Exemples de référence
- Voir `Lecon_01.md` pour le format standard

---

## 🧪 Agent 2 : Création de tests et exercices

### Rôle
Créer et gérer un système d'apprentissage optimisé basé sur le testing actif (retrieval practice) pour maximiser la rétention et la maîtrise du coréen. Corriger les tests, suivre les progrès, et adapter les révisions selon les performances de l'apprenant.

### Structure des dossiers

```
/home/daewon/Documents/Korean/
├── Lecons/              # Toutes les leçons organisées
├── Tests_a_faire/       # Tests en attente de complétion
├── Tests_corriges/      # Tests complétés avec corrections détaillées
└── progress.json        # Suivi centralisé des progrès
```

### Format des fichiers de test

#### Nommage
- Format : `Test_XX.md` (où XX est le numéro séquentiel : 01, 02, 03, etc.)
- Toujours en français pour les instructions
- Questions mélangées en français et coréen selon le type

#### Structure d'un test

```markdown
# Test XX - Leçon(s) [numéros] : [Concepts testés]

**Date de réalisation :** _______________

**Temps suggéré :** [X-Y minutes]

## Instructions

[Instructions claires pour l'apprenant]

---

## Question 1 - [Type de question] ([Catégorie])

[Énoncé de la question]

**Votre réponse :**




---

[Questions suivantes avec même format]

---

## Notes personnelles (optionnel)

[Espace pour réflexions de l'apprenant]

---

**Une fois terminé, informez-moi pour que je procède à la correction !**
```

### Types de questions et distribution

#### Variété des exercices (rotation dans chaque test)
1. **QCM (Questions à Choix Multiples)** : 15-20%
   - Test de compréhension des règles
   - Identification de la bonne forme

2. **Complétion** : 20-25%
   - Ajouter le bon suffixe/terminaison
   - Compléter des phrases

3. **Identification** : 10-15%
   - Reconnaître consonne finale vs voyelle
   - Identifier les structures grammaticales

4. **Traduction FR → KR** : 15-20%
   - Production active en coréen
   - Application des règles apprises

5. **Traduction KR → FR** : 15-20%
   - Compréhension du coréen
   - Vérification du vocabulaire

6. **Application créative** : 10-15%
   - Création de phrases originales
   - Utilisation libre des concepts

7. **Correction d'erreurs** : 5-10%
   - Attention aux détails
   - Compréhension fine des règles

8. **Vocabulaire pur** : 5-10%
   - Mémorisation des mots
   - Associations coréen-français

### Alternance des tests (long vs court)

#### Tests courts (8-12 questions)
- Durée : 15-20 minutes
- Focus : 1-2 leçons maximum
- Fréquence : Tests 1-4, 6-9, 11-14, etc.
- Objectif : Consolidation ciblée

#### Tests longs (20-25 questions)
- Durée : 35-45 minutes
- Focus : Révision cumulative de plusieurs leçons
- Fréquence : Tests 5, 10, 15, 20, etc. (tous les 5 tests)
- Objectif : Interleaving et révision espacée

### Système de correction

#### Processus de correction
1. **Lire le test complété** par l'apprenant
2. **Créer un fichier de correction détaillé** : `Test_XX_Correction.md`
3. **Mettre à jour progress.json** avec les nouvelles données
4. **Déplacer les deux fichiers** (test + correction) dans `Tests_corriges/`
5. **Générer des recommandations** personnalisées

#### Structure du fichier de correction

```markdown
# Correction du Test XX

**Date de correction :** [Date]
**Score global :** XX/XX (XX%)

---

## Résumé des performances

| Notion testée | Score | Commentaire |
|---------------|-------|-------------|
| [Notion 1]    | X/Y   | [Feedback]  |
| [Notion 2]    | X/Y   | [Feedback]  |

---

## Correction détaillée

### Question 1
**Votre réponse :** [réponse de l'apprenant]
**Correction :** ✓ Correct / ✗ Incorrect
**Réponse attendue :** [bonne réponse]
**Explication :** [Pourquoi c'est cette réponse, rappel de la règle]

---

[Questions suivantes]

---

## Analyse et recommandations

### Points forts 💪
- [Notions bien maîtrisées]

### Points à améliorer 📚
- [Notions à retravailler]

### Suggestions pour la suite
- [Recommandations personnalisées]
- [Notions à réviser en priorité]

---

**Prochain test recommandé :** [Suggestions basées sur progress.json]
```

### Gestion du fichier progress.json

#### Structure du JSON
Le fichier `progress.json` contient :
- **metadata** : statistiques globales
- **notions** : tracking détaillé par notion (une notion = un concept testable)
- **tests_history** : historique de tous les tests
- **learning_insights** : analyses et recommandations
- **spaced_repetition_intervals** : intervalles suggérés (1, 3, 7, 14, 30 jours)

#### Identification des notions
Pour chaque leçon, identifier 4-6 notions testables :
- Format : `Lecon_XX_[description_courte]`
- Exemples : `Lecon_01_이에요예요_usage`, `Lecon_01_consonne_vs_voyelle`
- Tags : `["grammaire", "vocabulaire", "phonétique", "structure", etc.]`

#### Mise à jour après chaque test
1. Calculer le score par notion
2. Mettre à jour `mastery_level` (0-100%)
3. Incrémenter `total_attempts`, `correct_answers`, `incorrect_answers`
4. Ajouter à `performance_history` : date, score, contexte
5. Calculer `confidence_score` (basé sur consistance des performances)
6. Suggérer `next_review_date` selon l'algorithme de répétition espacée

#### Algorithme de scoring
- **mastery_level** = moyenne pondérée des dernières performances (plus de poids sur les récentes)
- **confidence_score** = consistance sur les 3-5 derniers tests
- Score < 60% → révision rapide recommandée (1-3 jours)
- Score 60-80% → révision normale (7 jours)
- Score > 80% → révision espacée (14-30 jours)

### Principes pédagogiques appliqués

#### 1. Retrieval Practice (Testing Effect)
- Le testing actif renforce mieux la mémorisation que la lecture passive
- Tester AVANT de réviser stimule l'apprentissage
- Questions variées pour activer différents circuits cognitifs

#### 2. Interleaving (Entrelacement)
- Mélanger différents types de questions dans un même test
- Tests longs mixent plusieurs leçons
- Évite l'apprentissage par bloc trop prévisible

#### 3. Spacing Effect (Répétition espacée)
- Intervalles croissants entre révisions : 1, 3, 7, 14, 30 jours
- Tracking dans progress.json pour suggestions personnalisées
- Adaptation selon les performances individuelles

#### 4. Feedback immédiat et constructif
- Corrections détaillées avec explications
- Rappels des règles pour chaque erreur
- Feedback positif sur les points forts

#### 5. Metacognition
- Section "Notes personnelles" pour auto-réflexion
- Visualisation des progrès via progress.json
- Recommandations explicites basées sur les données

### Conventions et bonnes pratiques

#### Création de tests
- **Toujours varier les types de questions**
- **Équilibrer difficulté** : 60% facile/moyen, 30% moyen, 10% difficile
- **Ordre stratégique** : commencer par questions plus simples pour boost confiance
- **Espaces généreux** pour les réponses (3-4 lignes par défaut)
- **Instructions claires** en début de test

#### Correction
- **Être constructif et encourageant** dans les commentaires
- **Rappeler systématiquement la règle** pour chaque erreur
- **Féliciter les progrès** même minimes
- **Donner des exemples supplémentaires** si notion mal comprise
- **Être précis dans les explications** sans être condescendant

#### Maintenance du progress.json
- **Mettre à jour IMMÉDIATEMENT** après chaque correction
- **Vérifier la cohérence** des données (totaux, pourcentages)
- **Archiver les anciennes données** si nécessaire (au-delà de 50 tests)
- **Générer des insights** pertinents basés sur les tendances

### Gestion des cas particuliers

#### Si l'apprenant performe très bien (>90%)
- Accélérer les intervalles de révision
- Introduire des questions plus créatives/complexes
- Passer aux leçons suivantes plus rapidement

#### Si l'apprenant a des difficultés (<50%)
- Réduire les intervalles de révision
- Simplifier les questions temporairement
- Suggérer de relire la leçon avant le prochain test
- Créer des mini-tests ciblés sur les notions problématiques

#### Si progression stagnante
- Varier davantage les formats de questions
- Introduire des contextes différents
- Vérifier si certaines notions prérequises sont mal comprises

### Ton et communication

#### Avec l'apprenant
- **Encourageant** : valoriser l'effort et les progrès
- **Patient** : ne jamais critiquer, toujours expliquer
- **Clair** : instructions sans ambiguïté
- **Motivant** : célébrer les réussites, minimiser l'impact des erreurs

#### Dans les corrections
- **Pédagogique** : chaque erreur = opportunité d'apprentissage
- **Précis** : explications techniques mais accessibles
- **Personnalisé** : adapter les commentaires aux patterns de l'apprenant
- **Orienté action** : toujours donner des pistes concrètes d'amélioration

### Exemples de référence
- Voir `Tests_a_faire/Test_01.md` pour le format standard
- Voir `progress.json` pour la structure de données

---

## 📋 Notes générales pour tous les agents

### Workflow
1. Lire ce guide en entier avant de commencer
2. Consulter les fichiers existants pour comprendre le style
3. Maintenir la cohérence avec le travail précédent
4. Documenter tout changement important dans ce guide

### Communication entre agents
- Les agents ne peuvent pas communiquer directement
- **Toute communication passe par les fichiers**
- Laisser des notes dans ce guide si nécessaire
- Utiliser des fichiers `TODO.md` ou `NOTES.md` pour les messages

### Gestion du projet
- Toujours vérifier les fichiers existants avant d'en créer de nouveaux
- Respecter la numérotation des leçons
- Ne pas supprimer de fichiers sans raison
- Garder une structure de dossiers claire

---

## 📝 Journal des modifications

| Date | Agent | Modification |
|------|-------|--------------|
| 2025-11-22 | Agent 1 (Mise au propre) | Création du guide initial |
| 2025-11-22 | Agent 2 (Tests et exercices) | Complétion de la section Agent 2 avec système complet de testing actif, correction, et suivi des progrès |

---

**Note** : Ce document est vivant. N'hésitez pas à l'améliorer et à ajouter des sections si nécessaire !

