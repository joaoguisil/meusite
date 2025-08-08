#!/data/data/com.termux/files/usr/bin/bash
cd ~/meusite
echo "Atualizando site..."

mkdir -p pages assets/css assets/js assets/icons

cp /sdcard/Download/index2.html index.html
cp /sdcard/Download/sobre.html pages/sobre.html
cp /sdcard/Download/musica.html pages/musica.html
cp /sdcard/Download/videos.html pages/videos.html
cp /sdcard/Download/agenda.html pages/agenda.html
cp /sdcard/Download/epk.html pages/epk.html
cp /sdcard/Download/contato.html pages/contato.html
cp /sdcard/Download/styles.css assets/css/styles.css
cp /sdcard/Download/scripts.js assets/js/scripts.js
cp /sdcard/Download/favicon.ico assets/icons/favicon.ico

git add .
git commit -m "Atualização automática em $(date '+%d/%m/%Y %H:%M')"
git push origin master

echo -e "\n✅ Atualizado! Acesse: https://joaoguisil.github.io/meusite"
