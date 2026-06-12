#!/bin/sh
# Just a simple script implementation to replace color sequences in strings with ANSI escape codes.
cprintf() {
    CP_BLACK_FG=$'\033[30m'
    CP_RED_FG=$'\033[31m'
    CP_GREEN_FG=$'\033[32m'
    CP_YELLOW_FG=$'\033[33m'
    CP_BLUE_FG=$'\033[34m'
    CP_PURPLE_FG=$'\033[35m'
    CP_CYAN_FG=$'\033[36m'
    CP_WHITE_FG=$'\033[37m'
    CP_BLACK_BG=$'\033[40m'
    CP_RED_BG=$'\033[41m'
    CP_GREEN_BG=$'\033[42m'
    CP_YELLOW_BG=$'\033[43m'
    CP_BLUE_BG=$'\033[44m'
    CP_PURPLE_BG=$'\033[45m'
    CP_CYAN_BG=$'\033[46m'
    CP_WHITE_BG=$'\033[47m'
    CP_BOLD=$'\033[1m'
    CP_UNDERLINE=$'\033[4m'
    CP_RESET=$'\033[0m'
    while [ $# -gt 0 ]; do
        printf '%b' "$1" | sed \
            -e 's/{black}/'"${CP_BLACK_FG}"'/g' \
            -e 's/{red}/'"${CP_RED_FG}"'/g' \
            -e 's/{green}/'"${CP_GREEN_FG}"'/g' \
            -e 's/{yellow}/'"${CP_YELLOW_FG}"'/g' \
            -e 's/{blue}/'"${CP_BLUE_FG}"'/g' \
            -e 's/{purple}/'"${CP_PURPLE_FG}"'/g' \
            -e 's/{cyan}/'"${CP_CYAN_FG}"'/g' \
            -e 's/{white}/'"${CP_WHITE_FG}"'/g' \
            -e 's/\[black\]/'"${CP_BLACK_BG}"'/g' \
            -e 's/\[red\]/'"${CP_RED_BG}"'/g' \
            -e 's/\[green\]/'"${CP_GREEN_BG}"'/g' \
            -e 's/\[yellow\]/'"${CP_YELLOW_BG}"'/g' \
            -e 's/\[blue\]/'"${CP_BLUE_BG}"'/g' \
            -e 's/\[purple\]/'"${CP_PURPLE_BG}"'/g' \
            -e 's/\[cyan\]/'"${CP_CYAN_BG}"'/g' \
            -e 's/\[white\]/'"${CP_WHITE_BG}"'/g' \
            -e 's/{bold}/'"${CP_BOLD}"'/g' \
            -e 's/{underline}/'"${CP_UNDERLINE}"'/g' \
            -e 's/{reset}/'"${CP_RESET}"'/g'
        shift
    done
}
cprintf $@
