#!/bin/bash

echo "🎓 Ejecutando topología para pruebas ACL..."
sudo mn --topo single,3 --controller=remote --test pingall > salida_ping.txt

echo "🔍 Resultados:"
cat salida_ping.txt

echo ""
echo "📊 Evaluación automática:"
if grep -q "h1 -> h2" salida_ping.txt && grep -q "X" salida_ping.txt; then
    echo "✅ ACL aplicada correctamente: h1 y h2 no se comunican."
else
    echo "❌ Error: tráfico entre h1 y h2 no fue bloqueado."
fi

if grep -q "0% packet loss" salida_ping.txt; then
    echo "❌ Todos los hosts se comunican, ACL no aplicada correctamente."
fi