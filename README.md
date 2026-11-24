# Vide-cave à Pully

Petit site statique (Astro) pour vendre, à titre privé et en une fois, les objets de la cave, du box et des placards.

## Ajouter un objet

1. Déposer la photo dans `public/photos/` (p. ex. `lampe.jpg`, format paysage 4:3 idéalement).
2. Ajouter une entrée dans `src/data/objets.json` avec `"photo": "lampe.jpg"`.
3. Quand un objet est réservé ou vendu, changer `"statut"` en `"reserve"` ou `"vendu"`.

## Lancer en local

```bash
npm install
npm run dev     # http://localhost:4321
```

## Mettre en ligne

1. Créer un dépôt sur ton compte GitHub **personnel** (pas l'organisation bakir-in-out) et y pousser ce dossier.
2. Publication : `outils/publier.sh` construit le site et pousse le résultat sur la branche `gh-pages`. Dans GitHub : Settings → Pages → Source « Deploy from a branch », branche `gh-pages`, dossier `/ (root)`.
   Variante automatique : copier `outils/deploy.yml.exemple` dans `.github/workflows/deploy.yml` (à faire depuis ton Mac, l'accès de Claude ne peut pas créer de workflow), puis Source « GitHub Actions ».
3. Settings → Pages → Custom domain : `vide-cave.bakir.ch` (le fichier `public/CNAME` le fixe déjà), puis cocher « Enforce HTTPS ».
4. Chez le gestionnaire DNS de bakir.ch, ajouter **un seul** enregistrement : `CNAME vide-cave → <ton-compte>.github.io.`
   Ne toucher ni à la redirection de bakir.ch vers bakir.io, ni aux enregistrements MX, SPF (TXT) et DKIM d'iCloud : la messagerie @bakir.ch en dépend.

## À remplir avant publication

`src/config.ts` : e-mail privé et numéro TWINT.
