#!/bin/bash


#show your currunt destination
pwd
sleep 1


# ANSI color codes
BLUE='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

    echo -e "${BLUE}"
    echo '██████╗ ██╗███████╗██╗  ██╗'
    echo '██╔══██╗██║██╔════╝██║ ██╔╝'
    echo '██║  ██║██║███████╗█████╔╝ '
    echo '██║  ██║██║╚════██║██╔═██╗ '
    echo '██████╔╝██║███████║██║  ██╗'
    echo -e '╚═════╝ ╚═╝╚══════╝╚═╝  ╚═╝'
    echo
    echo -e "${CYAN}"
    echo ' █████╗ ███╗   ██╗ █████╗ ██╗  ██╗   ██╗███████╗███████╗██████╗ '
    echo '██╔══██╗████╗  ██║██╔══██╗██║  ╚██╗ ██╔╝╚══███╔╝██╔════╝██╔══██╗'
    echo '███████║██╔██╗ ██║███████║██║   ╚████╔╝   ███╔╝ █████╗  ██████╔╝'
    echo '██╔══██║██║╚██╗██║██╔══██║██║    ╚██╔╝   ███╔╝  ██╔══╝  ██╔══██╗'
    echo '██║  ██║██║ ╚████║██║  ██║███████╗██║   ███████╗███████╗██║  ██║'
    echo '╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝   ╚══════╝╚══════╝╚═╝  ╚═╝'
    echo -e "${NC}"


# Function to generate disk usage report
generate_report() {
    echo "Generating Disk Usage Report for $1..."
    
    echo "----------------------------------------"
    
    # Generate disk usage for the given directory
    du -ah --max-depth=1 "$1" | sort -hr

    echo "----------------------------------------"
}

# Prompt user for directories to analyze
echo "Enter directories to analyze (space-separated):"
read -r directories

# If no directories are provided, use default directories
if [ -z "$directories" ]; then
    directories="/home /var /tmp"
fi

# Create a report file or output to terminal
output_file="disk_usage_report.txt"
echo "Saving report to $output_file"
echo "Disk Usage Report" > "$output_file"
echo "Generated on $(date)" >> "$output_file"
echo "----------------------------------------" >> "$output_file"

# Loop through the directories
for dir in $directories; do
    if [ -d "$dir" ]; then
        # Append the report for each directory to the output file
        echo "Directory: $dir" >> "$output_file"
        du -ah --max-depth=1 "$dir" | sort -hr >> "$output_file"
        echo "----------------------------------------" >> "$output_file"
    else
        echo "Directory $dir does not exist, skipping."
    fi
done

# Output summary
echo "Disk Usage Report has been saved to $output_file."
