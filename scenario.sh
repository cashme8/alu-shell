#!/bin/bash

# Function to create Scenario 1
create_scenario_1() {
    echo "Creating Scenario 1: Directory Creation with Combined Commands"
    mkdir -p /home/scenario1/{grade_directory,profile_directory}
    echo "Grade: A" >/home/scenario1/grade_directory/student1_grade.txt
    echo "Grade: B" >/home/scenario1/grade_directory/student2_grade.txt
    echo "Profile: Alice" >/home/scenario1/profile_directory/student1_profile.txt
    echo "Profile: Bob" >/home/scenario1/profile_directory/student2_profile.txt
    echo "Cohort Report" >/home/scenario1/cohort_report.txt
    echo "Summarized View" >/home/scenario1/summarized_view.txt
    chmod -R 755 /home/scenario1
    echo "Scenario 1 created: Directories and files with different content."
}

# Function to create Scenario 2
create_scenario_2() {
    echo "Creating Scenario 2: Extracting Information from a File"
    mkdir -p /home/scenario2
    echo -e "student_name cohort grade gpa\nAlice 2025 A 3.8\nBob 2025 B 3.2\nCharlie 2024 A 3.9\nDiana 2023 C 2.8\nEve 2025 B 3.4" >/home/scenario2/student_data.txt
    echo "Scenario 2 created: Space-separated file with student data ready for processing."
}

# Function to create Scenario 3
create_scenario_3() {
    echo "Creating Scenario 3: Searching and Linking Files"
    mkdir -p /home/scenario3/source /home/scenario3/target
    echo "Sample content for file1" >/home/scenario3/source/file1.txt
    echo "Sample content for file2" >/home/scenario3/source/file2.txt
    ln -s /home/scenario3/source /home/scenario3/target/link_to_source
    echo "Scenario 3 created: Files and symbolic link ready."
}

# Main script logic
clear
echo "Choose a scenario to create:"
echo "1) Scenario 1 - Directory Creation"
echo "2) Scenario 2 - File Processing"
echo "3) Scenario 3 - File Searching and Linking"
read -p "Enter your choice (1/2/3): " choice

case $choice in
1)
    create_scenario_1
    ;;
2)
    create_scenario_2
    ;;
3)
    create_scenario_3
    ;;
*)
    echo "Invalid choice. Exiting."
    ;;
esac
