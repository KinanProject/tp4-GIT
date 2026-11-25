#!/bin/bash

echo "=== Date actuelle ==="
date

echo -e "\n=== Uptime ==="
uptime 2>/dev/null || systeminfo | grep -i "Heure de démarrage" || net stats workstation | grep -i "Statistiques depuis"

echo -e "\n=== Mémoire libre ==="
free -h 2>/dev/null || wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value

echo -e "\n=== Espace disque libre ==="
df -h
