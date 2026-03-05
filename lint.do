# shellcheck shell=sh
set -u

exec >&2

redo-ifchange redo.rb

rubocop redo.rb
reek < redo.rb
rubocop run_command.rb
reek < run_command.rb

# vim: ft=sh
