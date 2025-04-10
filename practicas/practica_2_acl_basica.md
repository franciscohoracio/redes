# 🔐 Práctica 2: Implementación de ACLs en SDN

## Objetivo:
Aplicar reglas de filtrado para bloquear tráfico entre hosts específicos.

## Pasos:
1. Lanza la red:
   sudo mn --topo single,3 --controller=remote

2. Inicia el controlador ACL:
   ryu-manager controlador_acl.py

3. Ejecuta la prueba:
   chmod +x verificar_acl.sh
   ./verificar_acl.sh