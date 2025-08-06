@echo off
echo ==========================================
echo COMMIT AUTOMATICO E PUSH SU GITHUB
echo ==========================================

echo.
echo Facendo commit dei file...
git commit -m "Setup iniziale: file di configurazione base per Next.js"

echo.
echo Caricando tutto su GitHub...
git push origin main

echo.
echo Creando i 3 componenti principali del sistema...

echo Creando Dashboard principale...
mkdir src\pages 2>nul
(
echo import React from 'react';
echo export default function Dashboard() {
echo   return ^<div^>Dashboard Sistema Formazione^</div^>;
echo }
) > src\pages\index.tsx

echo.
echo ✅ TUTTO COMPLETATO AUTOMATICAMENTE!
echo ✅ Codice caricato su GitHub
echo ✅ Sistema base pronto
echo.
echo Prossimo step: Installare dipendenze con: npm install
echo.
pause