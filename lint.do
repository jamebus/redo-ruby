# shellcheck shell=sh
set -u

exec >&2

redo-ifchange redo.rb

rubocop redo.rb
reek < redo.rb
