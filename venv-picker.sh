#!/bin/bash

# Function to deactivate the current virtual environment
deactivate_venv() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "Deactivating current virtual environment: $VIRTUAL_ENV"
        deactivate
    else
        echo "No active virtual environment."
    fi
}

# Get a list of available virtual environments
venv_list=$(ls -d $HOME/.virtualenvs/*/)

# Create an array to store the virtual environment names
venv_names=()
for venv_path in $venv_list; do
    venv_name=$(basename $venv_path)
    venv_names+=("$venv_name" "")
done

# Add an option to deactivate the current virtual environment
venv_names+=("DEACTIVATE" "")

# Use whiptail to display the selection menu
selection=$(whiptail --title "Select Python Virtual Environment" \
                     --menu "Choose a virtual environment:" \
                     15 60 7 "${venv_names[@]}" \
                     3>&1 1>&2 2>&3)

# Check if the user made a selection or canceled
if [ -n "$selection" ]; then
    if [ "$selection" == "DEACTIVATE" ]; then
        deactivate_venv
    else
        echo "Selected virtual environment: $selection"
        # Activate the selected virtual environment
        source $HOME/.virtualenvs/$selection/bin/activate
    fi
else
    echo "No virtual environment selected."
fi
