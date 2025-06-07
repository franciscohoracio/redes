# 🧠 Práctica 1: Switch con Aprendizaje de MAC (Learning Switch)

## Objetivo:
Comprender cómo funciona un switch SDN que aprende direcciones MAC para reenviar paquetes.

## Pasos:
1. Inicia la topología:
   sudo mn --topo single,3 --controller=remote

2. Ejecuta el controlador:
   ryu-manager controlador_miswitch.py

3. Realiza pruebas de conectividad:
   mininet> pingall
