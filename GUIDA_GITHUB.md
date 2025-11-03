# 🐍 Guida Completa: Caricare The Serpent Road su GitHub

## 📋 Prerequisiti

Prima di iniziare, assicurati di avere:
- ✅ Account GitHub (gratuito) - [Iscriviti qui](https://github.com/signup)
- ✅ Tutti i file HTML del progetto scaricati
- ✅ (Opzionale) Git installato sul tuo computer

---

## 🎯 METODO 1: Interfaccia Web GitHub (CONSIGLIATO per principianti)

### Step 1: Crea il Repository

1. **Vai su GitHub.com** e fai login
2. Clicca sul pulsante **"+"** in alto a destra
3. Seleziona **"New repository"**
4. Compila il form:
   ```
   Repository name: the-serpent-road
   Description: The Serpent Road - GDR completo in un deserto post-apocalittico
   ```
5. Scegli **Public** (visibile a tutti) o **Private** (solo tu)
6. ✅ **IMPORTANTE**: Spunta "Add a README file"
7. Scegli una licenza:
   - **CC BY-NC-SA 4.0** (per contenuti creativi, non commerciale)
   - **MIT** (permissiva, anche uso commerciale)
   - **GPL v3** (software open source)
8. Clicca **"Create repository"**

### Step 2: Carica i File

1. Nel repository appena creato, clicca **"Add file"** → **"Upload files"**
2. **Trascina tutti i file HTML** nell'area di upload:
   ```
   ✅ index.html
   ✅ serpent_road_manual_part1.html
   ✅ serpent_road_manual_part2.html
   ✅ serpent_road_manual_part3.html
   ✅ serpent_road_manual_part4.html
   ✅ serpent_road_manual_part5.html
   ✅ serpent_road_session_zero.html
   ✅ serpent_road_player_cheatsheet.html
   ✅ serpent_road_gm_cheatsheet.html
   ✅ serpent_road_character_sheet.html
   ✅ serpent_road_journey_tracker.html
   ✅ serpent_road_glossario.html
   ✅ serpent_road_il_serpente.html
   ✅ serpent_road_artefatti_celesti.html
   ✅ serpent_road_rovine_celesti.html
   ✅ serpent_road_quick_reference.html
   ✅ serpent_road_quickstart_adventure.html
   ```
3. In fondo alla pagina, nel campo **"Commit changes"**:
   ```
   Commit message: "Add all game files - The Serpent Road RPG v1.0"
   ```
4. Clicca **"Commit changes"**
5. **Aspetta** che GitHub carichi tutti i file (può richiedere 30-60 secondi)

### Step 3: Attiva GitHub Pages (Rendi il Gioco Accessibile Online!)

1. Nel repository, clicca su **"Settings"** (⚙️ in alto)
2. Nel menu laterale sinistro, scorri fino a **"Pages"**
3. Nella sezione **"Build and deployment"**:
   - **Source**: Seleziona **"Deploy from a branch"**
   - **Branch**: Seleziona **"main"** e **"/ (root)"**
4. Clicca **"Save"**
5. **Aspetta 2-3 minuti** che GitHub generi il sito
6. Ricarica la pagina → Vedrai un box verde con il link:
   ```
   ✅ Your site is live at https://[tuo-username].github.io/the-serpent-road/
   ```

### Step 4: Personalizza il README (Opzionale ma consigliato)

1. Nel repository, clicca sul file **README.md**
2. Clicca sull'icona della **matita** (Edit this file)
3. Sostituisci il contenuto con una descrizione del progetto
4. Esempio:
   ```markdown
   # 🐍 The Serpent Road RPG
   
   Un gioco di ruolo completo ambientato in un deserto post-apocalittico.
   
   ## 🎮 Come Giocare
   
   Visita: https://[tuo-username].github.io/the-serpent-road/
   
   ## 📚 Contenuti
   
   - Manuale completo in 5 parti
   - Quickstart Adventure pronta all'uso
   - Strumenti interattivi
   - Cheat sheets
   
   Buon gioco! 🐍
   ```
5. Clicca **"Commit changes"**

---

## 💻 METODO 2: Riga di Comando Git (Per utenti avanzati)

### Step 1: Installa Git

**Windows**: [Scarica Git](https://git-scm.com/download/win)  
**Mac**: Già installato, oppure `brew install git`  
**Linux**: `sudo apt install git` (Ubuntu/Debian)

### Step 2: Configura Git (prima volta)

Apri il terminale/prompt dei comandi:

```bash
git config --global user.name "Tuo Nome"
git config --global user.email "tua-email@example.com"
```

### Step 3: Crea Repository su GitHub

1. Vai su GitHub.com → "New repository"
2. Nome: `the-serpent-road`
3. **NON** spuntare "Add a README file" (lo faremo via terminale)
4. Clicca "Create repository"
5. **Copia l'URL** che appare (es. `https://github.com/username/the-serpent-road.git`)

### Step 4: Carica i File via Terminale

```bash
# 1. Crea una cartella per il progetto
mkdir the-serpent-road
cd the-serpent-road

# 2. Inizializza Git
git init

# 3. Copia TUTTI i file HTML in questa cartella
# (usa Finder/Explorer per copiare i file nella cartella the-serpent-road)

# 4. Crea un .gitignore (opzionale)
echo ".DS_Store
Thumbs.db
*.bak" > .gitignore

# 5. Crea un README.md
cat > README.md << 'EOF'
# 🐍 The Serpent Road RPG

Un gioco di ruolo completo ambientato in un deserto post-apocalittico.

[Gioca online](https://[tuo-username].github.io/the-serpent-road/)
EOF

# 6. Aggiungi tutti i file
git add .

# 7. Crea il primo commit
git commit -m "Initial commit - The Serpent Road RPG v1.0"

# 8. Aggiungi il repository remoto (sostituisci con il TUO URL!)
git remote add origin https://github.com/TUO-USERNAME/the-serpent-road.git

# 9. Carica su GitHub
git branch -M main
git push -u origin main
```

**NOTA AUTENTICAZIONE**:  
Se hai l'autenticazione a 2 fattori (consigliato), dovrai creare un **Personal Access Token**:
1. GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. "Generate new token" → Seleziona scope **"repo"**
3. Copia il token e usalo come password quando fai `git push`

### Step 5: Attiva GitHub Pages

1. Repository → Settings → Pages
2. Source: **main** branch, **/ (root)** folder
3. Save

---

## ✅ Verifica Finale

Dopo aver caricato tutto:

1. **Verifica i file su GitHub**:
   - Vai su `https://github.com/[tuo-username]/the-serpent-road`
   - Dovresti vedere tutti i 16 file HTML

2. **Testa il sito online** (dopo 2-3 minuti):
   - Vai su `https://[tuo-username].github.io/the-serpent-road/`
   - Dovresti vedere l'index navigabile

3. **Controlla che tutto funzioni**:
   - Clicca sui link nell'index
   - Verifica che si aprano correttamente tutti i file
   - Testa gli strumenti interattivi (character sheet, journey tracker)

---

## 🎨 Personalizzazioni Aggiuntive (Opzionale)

### Aggiungi un'immagine di copertina

1. Crea un'immagine 1200x630px (copertina social)
2. Caricala come `cover.png` nel repository
3. Aggiungi nel README:
   ```markdown
   ![The Serpent Road](cover.png)
   ```

### Aggiungi un dominio custom

1. Compra un dominio (es. `theserpentroad.com`)
2. Settings → Pages → Custom domain
3. Configura i DNS secondo le istruzioni GitHub

### Aggiungi un file LICENSE

1. Nel repository, clicca "Add file" → "Create new file"
2. Nome file: `LICENSE`
3. Clicca "Choose a license template"
4. Seleziona la licenza (es. CC BY-NC-SA 4.0)
5. Commit

---

## 🐛 Risoluzione Problemi

### Problema: "Permission denied" durante git push

**Soluzione**:
- Usa un Personal Access Token invece della password
- Oppure configura SSH keys

### Problema: GitHub Pages non si attiva

**Soluzione**:
- Verifica che il repository sia pubblico
- Controlla che `index.html` sia nella root (non in sottocartelle)
- Aspetta 5-10 minuti dopo l'attivazione

### Problema: I link nel sito non funzionano

**Soluzione**:
- Verifica che tutti i file siano caricati
- Controlla che i nomi file siano esatti (maiuscole/minuscole)
- Assicurati che i link in `index.html` puntino ai file corretti

### Problema: File troppo grandi

**Soluzione**:
- GitHub ha un limite di 100MB per file
- I tuoi file HTML sono piccoli (~1MB totale) quindi non dovrebbe essere un problema

---

## 📞 Hai bisogno di aiuto?

- **GitHub Docs**: https://docs.github.com/
- **GitHub Community**: https://github.community/
- **Tutorial Git**: https://try.github.io/

---

## 🎉 Congratulazioni!

Hai caricato **The Serpent Road** su GitHub! 🐍

Ora puoi:
- ✅ Condividere il link con i giocatori
- ✅ Aggiornare il gioco facilmente
- ✅ Ricevere feedback tramite Issues
- ✅ Far giocare chiunque online gratuitamente

**Il deserto ti aspetta!** 🏜️✨
