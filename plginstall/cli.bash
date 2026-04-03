#!/usr/bin/env bash
# Command Line Interface

repo="https://github.com/stefanm03-sys/Programming-Language-Guides"
version="v0.1"

install_npm_if_present() {
    local dir="$1"
    if [ -f "$dir/package.json" ]; then
        echo "Running npm install in $dir"
        (cd "$dir" && npm install)
    else
        echo "No package.json in $dir (skipping npm install)"
    fi
}

cmd_install() {
    echo "Installing.."
    mkdir -p ./plg
    chmod +x cli.bash

    src_dir="$(get_source_dir)" || return 1

    if ! command -v fzf >/dev/null 2>&1; then
        echo "fzf is required for arrow-key selection. Install it and try again."
        return 1
    fi

    echo "What languages do you want to install?"
    choice="$(printf '%s\n' All Some Quit | fzf --prompt='Select: ')"
    case "$choice" in
        All)
            echo "Installing all languages.."
            mkdir -p ./plg/languages
            cp -r "$src_dir"/* ./plg/languages/
            install_npm_if_present "./plg/languages/C"
            install_npm_if_present "./plg/languages/oop"
            install_npm_if_present "./plg/languages/other"
            ;;
        Some)
            echo "Listing.."
            cmd_dir
            echo "What directories to install?"
            choice="$(printf '%s\n' C oop other all none | fzf --prompt='Select: ')"
            case "$choice" in
                C)
                    echo "Installing package.."
                    mkdir -p ./plg/languages/C
                    cp -r "$src_dir"/C/* ./plg/languages/C/
                    install_npm_if_present "./plg/languages/C"
                    ;;
                oop)
                    echo "Installing package.."
                    mkdir -p ./plg/languages/oop
                    cp -r "$src_dir"/oop/* ./plg/languages/oop/
                    install_npm_if_present "./plg/languages/oop"
                    ;;
                other)
                    echo "Installing package.."
                    mkdir -p ./plg/languages/other
                    cp -r "$src_dir"/other/* ./plg/languages/other/
                    install_npm_if_present "./plg/languages/other"
                    ;;
                all)
                    echo "Installing all packages.."
                    mkdir -p ./plg/languages
                    cp -r "$src_dir"/* ./plg/languages/
                    install_npm_if_present "./plg/languages/C"
                    install_npm_if_present "./plg/languages/oop"
                    install_npm_if_present "./plg/languages/other"
                    ;;
                none|"")
                    echo "Cancelling!"
                    ;;
                *)
                    echo "Choose an option!"
                    ;;
            esac
            ;;
        Quit|"")
            echo "Cancelling Install!"
            ;;
        *)
            echo "Not an option!"
            ;;
    esac
}

cmd_greet() {
    echo "Hello user! Thank you for installing this package! Review the contents to your leisure."
    echo "Use (dir) w/o parentheses to look at the languages."
    echo "use (help) w/o parentheses for command help."
    echo "Current version: $version"
}

cmd_uninstall() {
    if ! command -v fzf >/dev/null 2>&1; then 
        echo "fzf is required for arrow-key selection. Install it and try again."
        return 1
    fi

    echo "Remove package?"
    choice="$(printf '%s\n' Remove Quit | fzf --prompt='Select: ')"
    case "$choice" in
        Remove)
            echo "Removing.."
            rm -rf ./plg
            ;;
        Quit|"")
            echo "Returning!"
            return 0
            ;;
        *)
            echo "Not an option!"
            ;;
    esac
}

cmd_help() {
    echo "Help:"
    echo "npm -> Run npm install in a selected language folder"
    echo "install -> Install language folders into ./plg"
    echo "greet -> Greets you!"
    echo "uninstall -> Uninstall this package."
    echo "help -> Command help."
    echo "dir -> List the directories in this package."
}

cmd_npm() {
    if ! command -v fzf >/dev/null 2>&1; then
        echo "fzf is required for arrow-key selection. Install it and try again."
        return 1
    fi

    echo "Select a folder to run npm install in:"
    choice="$(printf '%s\n' C oop other cancel | fzf --prompt='Select: ')"
    case "$choice" in
        C)
            install_npm_if_present "./languages/C"
            ;;
        oop)
            install_npm_if_present "./languages/oop"
            ;;
        other)
            install_npm_if_present "./languages/other"
            ;;
        cancel|"")
            echo "Cancelling!"
            ;;
        *)
            echo "Not an option!"
            ;;
    esac
}

cmd_dir() {
    echo "Directories:"
    ls -d ./languages/*
}

command="${1:-}"
if [ -n "$command" ]; then
    shift
fi

case "$command" in
    npm) cmd_npm "$@" ;;
    install) cmd_install "$@" ;;
    greet) cmd_greet "$@" ;;
    uninstall) cmd_uninstall "$@" ;;
    help) cmd_help "$@" ;;
    dir) cmd_dir "$@" ;;
    *)
      echo "What is this command: $command"
      echo "Mistype or unknown command! Use \"help\" for command help."
      ;;
esac
