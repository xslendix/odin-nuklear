#!/bin/bash

NUKLEAR_SOURCE="nuklear.c"
OUTPUT_DIR="."
LIB_NAME="libnuklear.a"

mkdir -p $OUTPUT_DIR
clang -c $NUKLEAR_SOURCE -o $OUTPUT_DIR/nuklear.o
ar rcs $OUTPUT_DIR/$LIB_NAME $OUTPUT_DIR/nuklear.o
rm $OUTPUT_DIR/nuklear.o

echo "Static library created at $OUTPUT_DIR/$LIB_NAME"
