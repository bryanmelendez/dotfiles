#!/bin/bash

# useless script because idf has builtin function that does this

copy_and_rename_idf_example() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: idf_new_project <project_name>" 
        return 1
    fi

    local proj_name=$1

    if [ -d "sample_project" ]; then
        echo "Error: Cannot copy example project, 'sample_project' already exists in this directory" 
        return 1
    fi

    if [ -d "$proj_name" ]; then
        echo "Error: project name already exists" 
        return 1
    fi

    . $HOME/esp/esp-idf/export.sh
    cp -r $IDF_PATH/examples/get-started/sample_project .
    mv sample_project "$proj_name"
    cd "$proj_name"
}

copy_and_rename_idf_example "$@"
