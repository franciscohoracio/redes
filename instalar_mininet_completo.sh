#!/bin/bash
set -e

echo "🔄 Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando dependencias principales..."
sudo apt install -y git python3-pip openvswitch-switch mininet   xterm python3-tk wireshark net-tools iproute2 curl

echo "🐍 Instalando RYU controller..."
sudo pip3 install ryu

echo "📁 Clonando Mininet (por si quieres ejemplos o personalizar)..."
git clone https://github.com/mininet/mininet.git ~/mininet

echo "📁 Clonando RYU por si necesitas más ejemplos..."
git clone https://github.com/osrg/ryu.git ~/ryu

echo "📁 Creando acceso directo para MiniEdit en el escritorio..."
echo -e '#!/bin/bash
sudo python3 ~/mininet/examples/miniedit.py' > ~/Desktop/miniedit
chmod +x ~/Desktop/miniedit

echo "🧼 Limpieza de posibles conflictos en Wireshark permisos..."
sudo dpkg-reconfigure wireshark-common
sudo usermod -aG wireshark "$USER"

echo "✅ Listo. Reinicia sesión para aplicar cambios de grupo (Wireshark)."

echo ""
echo "🎓 USO RECOMENDADO:"
echo "1. Ejecuta:   ~/Desktop/miniedit"
echo "2. En MiniEdit: diseña tu red y correla."
echo "3. En otra terminal:   ryu-manager ~/ryu/ryu/app/simple_switch.py"
echo "4. Captura tráfico con Wireshark filtrando por 'openflow' o 'tcp.port == 6633'"
