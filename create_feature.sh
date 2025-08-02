#!/bin/bash

# A shell script to generate the Clean Architecture folder structure
# for a new feature in a Flutter project.
#
# Usage: ./create_feature.sh <feature_name>
#
# Example: ./create_feature.sh authentication
# This will create a directory structure under `features/authentication` like:
#
# features/
# └── authentication/
#     ├── presentation/
#     │   ├── manager/
#     │   ├── pages/
#     │   └── widgets/
#     ├── domain/
#     │   ├── entities/
#     │   ├── repositories/
#     │   └── usecases/
#     └── data/
#         ├── datasources/
#         └── repositories/

# Check if a feature name was provided
if [ -z "$1" ]; then
  echo "Error: Please provide a feature name."
  echo "Usage: ./create_feature.sh <feature_name>"
  exit 1
fi

FEATURE_NAME=$1
BASE_DIR="lib/features"
FEATURE_DIR="$BASE_DIR/$FEATURE_NAME"

# Create the base 'features' directory if it doesn't exist
if [ ! -d "$BASE_DIR" ]; then
  echo "Creating base directory: $BASE_DIR"
  mkdir -p "$BASE_DIR"
fi

# Check if the feature directory already exists
if [ -d "$FEATURE_DIR" ]; then
  echo "Error: The feature directory '$FEATURE_DIR' already exists."
  exit 1
fi

echo "Creating Clean Architecture folder structure for '$FEATURE_NAME'..."

# Create the main feature directory
mkdir -p "$FEATURE_DIR"

# Create the three main layers
mkdir -p "$FEATURE_DIR/presentation"
mkdir -p "$FEATURE_DIR/domain"
mkdir -p "$FEATURE_DIR/data"

# Create subdirectories for the presentation layer
mkdir -p "$FEATURE_DIR/presentation/manager"
mkdir -p "$FEATURE_DIR/presentation/pages"
mkdir -p "$FEATURE_DIR/presentation/widgets"

# Create subdirectories for the domain layer
mkdir -p "$FEATURE_DIR/domain/entities"
mkdir -p "$FEATURE_DIR/domain/repositories"
mkdir -p "$FEATURE_DIR/domain/usecases"

# Create subdirectories for the data layer
mkdir -p "$FEATURE_DIR/data/datasources"
mkdir -p "$FEATURE_DIR/data/repositories"

echo "Done! Folder structure created at $FEATURE_DIR"
echo "Structure:"
tree "$FEATURE_DIR" || find "$FEATURE_DIR" -print | sed 's;[^/]*\/;|-- ;g;s;-- |;  |;g'