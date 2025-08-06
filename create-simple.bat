@echo off
echo ==========================================
echo CREAZIONE SISTEMA - VERSIONE SEMPLIFICATA
echo ==========================================

echo Creando CSS globale...
echo @tailwind base; > src\styles\globals.css
echo @tailwind components; >> src\styles\globals.css
echo @tailwind utilities; >> src\styles\globals.css

echo Creando Dashboard base...
echo import React from 'react'; > src\pages\index.tsx
echo export default function Dashboard() { >> src\pages\index.tsx
echo   return ( >> src\pages\index.tsx
echo     ^<div className="min-h-screen bg-blue-50 p-8"^> >> src\pages\index.tsx
echo       ^<h1 className="text-4xl font-bold"^>Sistema Formazione Psichiatria^</h1^> >> src\pages\index.tsx
echo       ^<p className="text-xl mt-4"^>Dashboard Principale^</p^> >> src\pages\index.tsx
echo     ^</div^> >> src\pages\index.tsx
echo   ); >> src\pages\index.tsx
echo } >> src\pages\index.tsx

echo Creando configurazione app...
echo import '../styles/globals.css'; > src\pages\_app.tsx
echo export default function App({ Component, pageProps }) { >> src\pages\_app.tsx
echo   return ^<Component {...pageProps} /^>; >> src\pages\_app.tsx
echo } >> src\pages\_app.tsx

echo Committando su GitHub...
git add .
git commit -m "Sistema base: Dashboard e CSS"
git push origin main

echo.
echo ✅ SISTEMA BASE CREATO!
echo TESTA CON: npm run dev
pause