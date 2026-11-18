#!/bin/bash

# Arrêt des 3 conteneurs
docker stop nginx1 nginx2 nginx-lb

# Suppression des conteneurs (utile s'ils n'ont pas été lancés avec --rm)
docker rm nginx1 nginx2 nginx-lb 2>/dev/null

# Suppression du réseau interne tplb
docker network rm tplb
