#!/usr/bin/env bash

PROMPT="%(?.✅.❌[%?]) %{$fg[green]%}%n@%m:%{$fg_bold[blue]%}%2~ $(git_prompt_info)%{$reset_color%}%(!.#.> )"
