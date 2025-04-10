# 🧠 Entorno de Red Virtual para Mininet + MiniEdit + RYU (Ubuntu)

Este repositorio contiene un script de instalación y una topología de ejemplo para configurar un entorno educativo de redes usando Mininet con interfaz gráfica (MiniEdit), controlador SDN RYU y soporte para Wireshark.

## ✅ ¿Qué incluye?

- 🔁 Mininet
- 🖱️ MiniEdit (GUI para diseñar topologías)
- 🔌 RYU Controller
- 📡 Wireshark (captura de tráfico OpenFlow)
- 📄 Topología de ejemplo: `topologia_ejemplo.mn`

---

## 🚀 Instalación

### 1. Clona este repositorio dentro de una VM Ubuntu (20.04 o 22.04)
```bash
git clone https://github.com/usuario/repositorio-mininet-sdn.git
cd repositorio-mininet-sdn
```

### 2. Ejecuta el script de instalación
```bash
chmod +x instalar_mininet_completo.sh
./instalar_mininet_completo.sh
```

> ℹ️ El script creará un acceso directo en tu escritorio para lanzar MiniEdit.

---

## 🧪 Uso

### Abrir MiniEdit:
```bash
~/Desktop/miniedit
```

### Correr la topología de ejemplo:
Desde MiniEdit puedes **abrir** `topologia_ejemplo.mn` o correr el siguiente comando manual:

```bash
sudo mn --custom topologia_ejemplo.mn --topo topoejemplo --controller=remote
```

### Ejecutar el controlador RYU:
```bash
ryu-manager ryu/ryu/app/simple_switch.py
```

---

## 📸 Capturar tráfico OpenFlow con Wireshark

Abre Wireshark y filtra por:

```
openflow
```
o
```
tcp.port == 6633
```

---

## 👨‍🏫 Ideal para:

- Cursos de redes SDN
- Prácticas universitarias
- Laboratorios virtuales

---

## 🧑‍💻 Autor

Francisco Horacio Ramos González — Universidad Autónoma de Coahuila  
💼 CTO en Tredicom