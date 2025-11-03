#!/bin/bash

# ========================================
# The Serpent Road - GitHub Setup Script
# ========================================
# Questo script automatizza il caricamento del progetto su GitHub
# 
# REQUISITI:
# - Git installato sul tuo computer
# - Account GitHub già creato
# - Repository già creato su GitHub (vedi istruzioni sotto)

echo "🐍 THE SERPENT ROAD - GitHub Setup Script"
echo "=========================================="
echo ""

# STEP 1: Verifica che git sia installato
if ! command -v git &> /dev/null; then
    echo "❌ ERRORE: Git non è installato sul tuo sistema."
    echo "Installa Git da: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git trovato: $(git --version)"
echo ""

# STEP 2: Configura Git (se necessario)
echo "📝 Configurazione Git..."
echo "Inserisci il tuo nome (verrà mostrato nei commit):"
read -r git_name
echo "Inserisci la tua email GitHub:"
read -r git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"

echo "✅ Git configurato con: $git_name <$git_email>"
echo ""

# STEP 3: Ottieni l'URL del repository
echo "🔗 Inserisci l'URL del tuo repository GitHub"
echo "Esempio: https://github.com/tuo-username/the-serpent-road.git"
echo ""
echo "URL repository:"
read -r repo_url

# STEP 4: Inizializza repository locale
echo ""
echo "📦 Inizializzazione repository locale..."

# Crea directory del progetto se non esiste
if [ ! -d "the-serpent-road" ]; then
    mkdir the-serpent-road
fi

cd the-serpent-road || exit

# Inizializza git
git init

# Crea .gitignore
cat > .gitignore << 'EOF'
# OS files
.DS_Store
Thumbs.db

# Editor files
*.swp
*.swo
*~
.vscode/
.idea/

# Backup files
*.bak
*~

# Temporary files
*.tmp
EOF

echo "✅ Repository inizializzato"
echo ""

# STEP 5: Aggiungi i file
echo "📁 Preparazione file da caricare..."
echo ""
echo "IMPORTANTE: Copia TUTTI i file HTML del progetto in questa cartella:"
echo "   $(pwd)"
echo ""
echo "Lista file da copiare:"
echo "  - index.html"
echo "  - serpent_road_manual_part1.html"
echo "  - serpent_road_manual_part2.html"
echo "  - serpent_road_manual_part3.html"
echo "  - serpent_road_manual_part4.html"
echo "  - serpent_road_manual_part5.html"
echo "  - serpent_road_session_zero.html"
echo "  - serpent_road_player_cheatsheet.html"
echo "  - serpent_road_gm_cheatsheet.html"
echo "  - serpent_road_character_sheet.html"
echo "  - serpent_road_journey_tracker.html"
echo "  - serpent_road_glossario.html"
echo "  - serpent_road_il_serpente.html"
echo "  - serpent_road_artefatti_celesti.html"
echo "  - serpent_road_rovine_celesti.html"
echo "  - serpent_road_quick_reference.html"
echo "  - serpent_road_quickstart_adventure.html"
echo ""
echo "Premi INVIO quando hai copiato tutti i file..."
read -r

# Verifica che index.html esista
if [ ! -f "index.html" ]; then
    echo "❌ ERRORE: index.html non trovato nella directory corrente"
    echo "Assicurati di aver copiato tutti i file nella cartella:"
    echo "   $(pwd)"
    exit 1
fi

echo "✅ File trovati, procedo..."
echo ""

# STEP 6: Crea README.md
echo "📄 Creazione README.md..."

cat > README.md << 'EOF'
# 🐍 The Serpent Road

**Un gioco di ruolo completo ambientato in un deserto post-apocalittico**

## 🎮 Cos'è The Serpent Road?

The Serpent Road è un GDR completo ambientato in un vasto deserto dove antiche rovine celesti nascondono tecnologia perduta e un misterioso Serpente gigantesco. Il gioco combina:

- **Survival brutale** - L'acqua è vita, il deserto è spietato
- **Combattimento tattico** - Letale ma fair, posizione > numeri
- **Mistero cosmico** - Chi era il Serpente? Cosa distrusse i Celesti?
- **Tecnologia-magia** - Artefatti alieni indistinguibili dalla magia
- **Politica grigia** - Nessuna fazione è "buona", solo sfumature

## 📚 Contenuti

Questo repository contiene il sistema completo:

- **Manuale in 5 parti** (~250 pagine)
- **Quickstart Adventure** - "La Carovana Scomparsa"
- **Strumenti interattivi** - Schede personaggio, tracker viaggi
- **Cheat sheets** per giocatori e GM
- **5 Appendici** - Glossario, Rovine, Artefatti, Mitologia

## 🚀 Come Iniziare

### Per giocare subito:
1. Apri [`serpent_road_quickstart_adventure.html`](serpent_road_quickstart_adventure.html)
2. Leggi le regole base (10 minuti)
3. Usa i PG pre-generati
4. Gioca l'avventura (3-4 ore)

### Per una campagna completa:
1. Inizia da [`index.html`](index.html) per navigare tutto il materiale
2. Leggi Manuale Parte 1 (mondo) e Parte 2 (creazione PG)
3. Usa la [Guida Sessione 0](serpent_road_session_zero.html)
4. Consulta le cheat sheets durante il gioco

## 🎲 Sistema di Gioco

- **Core**: 2d6 + dado abilità (d4→d10) vs Difficoltà
- **Abilità**: 8 abilità core (Combattimento, Furtività, Percezione, ecc.)
- **Background**: 10 background che definiscono il passato del PG
- **Valori**: 5 valori personali che guidano le scelte morali
- **Combattimento**: Letale (2-3 colpi uccidono), tattico, con Tocchi di Qualità

## 📖 Struttura Repository

```
/
├── index.html                              # Indice master navigabile
├── serpent_road_manual_part1.html          # Parte 1: Mondo
├── serpent_road_manual_part2.html          # Parte 2: Personaggi
├── serpent_road_manual_part3.html          # Parte 3: Sistema & Combattimento
├── serpent_road_manual_part4.html          # Parte 4: Viaggi & Artefatti
├── serpent_road_manual_part5.html          # Parte 5: GM & Bestiario
├── serpent_road_quickstart_adventure.html  # Avventura quickstart
├── serpent_road_session_zero.html          # Guida Sessione 0
├── serpent_road_player_cheatsheet.html     # Cheat sheet giocatori
├── serpent_road_gm_cheatsheet.html         # Cheat sheet GM
├── serpent_road_character_sheet.html       # Scheda personaggio interattiva
├── serpent_road_journey_tracker.html       # Tracker viaggi
├── serpent_road_glossario.html             # Glossario termini
├── serpent_road_il_serpente.html           # Appendice: Il Serpente
├── serpent_road_artefatti_celesti.html     # Catalogo artefatti
├── serpent_road_rovine_celesti.html        # Guida rovine
└── serpent_road_quick_reference.html       # Quick reference
```

## 🌐 Gioca Online

Se GitHub Pages è attivato, il gioco è disponibile online a:
**[https://[tuo-username].github.io/the-serpent-road/](index.html)**

## 📜 Licenza

[Inserisci qui la tua licenza - es. CC BY-NC-SA 4.0 per contenuti creativi]

## 🐍 Citazione

Se usi questo materiale, per favore cita:
```
The Serpent Road RPG
Versione 1.0 - Ottobre 2025
```

## 🤝 Contributi

[Specifica se accetti contributi, pull request, ecc.]

## 📧 Contatti

[Inserisci qui i tuoi contatti o link al tuo sito]

---

**"Il deserto nasconde segreti. Il Serpente osserva. Tu sei il viaggiatore. Cosa scoprirai?"**
EOF

echo "✅ README.md creato"
echo ""

# STEP 7: Aggiungi tutti i file
echo "➕ Aggiunta file al repository..."
git add .

# STEP 8: Primo commit
echo "💾 Creazione primo commit..."
git commit -m "Initial commit - The Serpent Road RPG complete

- Manuale completo in 5 parti
- Quickstart Adventure: La Carovana Scomparsa
- Strumenti interattivi (schede, tracker)
- Cheat sheets per giocatori e GM
- 5 Appendici supplementari
- README e documentazione"

echo "✅ Commit creato"
echo ""

# STEP 9: Aggiungi remote e push
echo "🚀 Caricamento su GitHub..."
git branch -M main
git remote add origin "$repo_url"

echo ""
echo "⚠️  AUTENTICAZIONE RICHIESTA"
echo "GitHub ti chiederà le credenziali."
echo "Se hai l'autenticazione a 2 fattori (consigliato),"
echo "dovrai usare un Personal Access Token invece della password."
echo ""
echo "Come generare un token:"
echo "1. Vai su GitHub.com → Settings → Developer settings"
echo "2. Personal access tokens → Tokens (classic)"
echo "3. Generate new token → Seleziona 'repo' scope"
echo "4. Copia il token e usalo come password"
echo ""
echo "Premi INVIO per procedere con il push..."
read -r

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 =========================================="
    echo "✅ SUCCESSO! Progetto caricato su GitHub"
    echo "=========================================="
    echo ""
    echo "📍 Repository URL: ${repo_url%.git}"
    echo ""
    echo "📝 Prossimi passi:"
    echo "1. Vai su GitHub.com e verifica i file"
    echo "2. Attiva GitHub Pages per renderlo accessibile online:"
    echo "   Repository → Settings → Pages → Source: main branch"
    echo "3. Il sito sarà disponibile a:"
    echo "   https://[tuo-username].github.io/the-serpent-road/"
    echo ""
    echo "🐍 Buon gioco!"
else
    echo ""
    echo "❌ Errore durante il push su GitHub"
    echo "Verifica:"
    echo "- L'URL del repository è corretto"
    echo "- Hai i permessi di scrittura sul repository"
    echo "- Le credenziali sono corrette"
    echo ""
    echo "Puoi riprovare manualmente con:"
    echo "  git push -u origin main"
fi
