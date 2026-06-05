
#!/bin/bash

# ----------------------
# STRICT MODE
# ----------------------
set -euo pipefail

LOG_FILE="sys_tool.log"

# ----------------------
# LOGGING FUNCTION
# ----------------------
log_action() {
    echo "$(date '+%F %T') - $1" >> "$LOG_FILE"
}

# ----------------------
# FUNCTION: GREET USER
# ----------------------
greet_user() {
    read -p "Enter your name: " name

    if [[ -z "$name" ]]; then
        echo "Name cannot be empty"
        return
    fi

    echo "Hello, $name!"
    log_action "User greeted: $name"
}

# ----------------------
# FUNCTION: SYSTEM INFO
# ----------------------
system_info() {
    echo "System Uptime:"
    uptime

    echo "Disk Usage:"
    df -h

    log_action "Viewed system info"
}

# ----------------------
# FUNCTION: BACKUP FILE
# ----------------------
backup_file() {
    read -p "Enter file to backup: " file

    if [[ ! -f "$file" ]]; then
        echo "File does not exist!"
        return
    fi

    backup_dir="backup_$(date +%F)"
    mkdir -p "$backup_dir"

    cp "$file" "$backup_dir/"

    echo "File backed up to $backup_dir/"
    log_action "Backed up file: $file"
}

# ----------------------
# FUNCTION: PASSWORD GENERATOR
# ----------------------
generate_password() {
    read -p "Enter password length: " length

    if ! [[ "$length" =~ ^[0-9]+$ ]]; then
        echo "Invalid length!"
        return
    fi

    password=""

    for ((i=0; i<length; i++)); do
        password+=$(printf "%c" $(( RANDOM % 94 + 33 )))
    done

    echo "Generated password: $password"
    log_action "Generated password of length $length"
}

# ----------------------
# MENU SYSTEM
# ----------------------
PS3="Choose an option (1-5): "

select option in "Greet User" "System Info" "Backup File" "Generate Password" "Exit"
do
    case $REPLY in
        1)
            greet_user
            ;;
        2)
            system_info
            ;;
        3)
            backup_file
            ;;
        4)
            generate_password
            ;;
        5)
            echo "Exiting..."
            log_action "User exited script"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done


