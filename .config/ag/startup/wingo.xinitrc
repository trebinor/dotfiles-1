#!/bin/sh

# vim: ft=sh sw=2 ts=2 sts=2

base="$HOME/.config/ag/startup"
case "$(myhostname)" in
  Turtle)
    exec "$base/wingo-turtle.xinitrc"
    ;;
  monty)
    exec "$base/wingo-monty.xinitrc"
    ;;
  krusty)
    exec "$base/wingo-krusty.xinitrc"
    ;;
  frink)
    exec "$base/wingo-frink.xinitrc"
    ;;
  skinner)
    exec "$base/wingo-skinner.xinitrc"
    ;;
  chalmers)
    exec "$base/wingo-chalmers.xinitrc"
    ;;
  wiggum)
    exec "$base/wingo-wiggum.xinitrc"
    ;;
esac
