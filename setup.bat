@echo off
echo ==========================================
echo SETUP AUTOMATICO SISTEMA FORMAZIONE AI
echo ==========================================

echo.
echo Creando file di configurazione...

echo Creando next.config.js...
(
echo /** @type {import('next'^).NextConfig} */
echo const nextConfig = {
echo   reactStrictMode: true,
echo   swcMinify: true,
echo };
echo module.exports = nextConfig
) > next.config.js

echo Creando tailwind.config.js...
(
echo /** @type {import('tailwindcss'^).Config} */
echo module.exports = {
echo   content: ['./src/**/*.{js,ts,jsx,tsx}'],
echo   theme: { extend: {} },
echo   plugins: [],
echo }
) > tailwind.config.js

echo Creando tsconfig.json...
(
echo {
echo   "compilerOptions": {
echo     "target": "es5",
echo     "lib": ["dom", "es6"],
echo     "allowJs": true,
echo     "skipLibCheck": true,
echo     "strict": true,
echo     "noEmit": true,
echo     "esModuleInterop": true,
echo     "module": "esnext",
echo     "moduleResolution": "bundler",
echo     "resolveJsonModule": true,
echo     "isolatedModules": true,
echo     "jsx": "preserve",
echo     "incremental": true,
echo     "baseUrl": ".",
echo     "paths": { "@/*": ["./src/*"] }
echo   },
echo   "include": ["**/*.ts", "**/*.tsx"],
echo   "exclude": ["node_modules"]
echo }
) > tsconfig.json

echo.
echo Creando file .env.example...
(
echo # API Keys Template
echo ANTHROPIC_API_KEY=sk-ant-api03-your-key-here
echo ELEVENLABS_API_KEY=sk_your-key-here  
echo DID_API_KEY=your-key-here
) > .env.example

echo.
echo ✅ TUTTI I FILE DI CONFIGURAZIONE CREATI!
echo.
echo PROSSIMO PASSO: Crea il file .env con le tue API keys reali
echo.
pause