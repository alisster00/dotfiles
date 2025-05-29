#!/bin/bash

# Obtener estado del modo No molestar
DND=$(dunstctl is-paused)

# Obtener número de notificaciones
COUNT=$(dunstctl count waiting)

# Mostrar diferente icono según el estado
if [ "$DND" = "true" ]; then
  echo "{\"text\":\"󰂛\", \"tooltip\":\"Modo No molestar activo\", \"class\":\"dnd\"}"
else
  if [ "$COUNT" -gt 0 ]; then
    echo "{\"text\":\"󰂚 $COUNT\", \"tooltip\":\"$COUNT notificaciones\", \"class\":\"notification\"}"
  else
    echo "{\"text\":\"󰂚\", \"tooltip\":\"No hay notificaciones\", \"class\":\"normal\"}"
  fi
fi
