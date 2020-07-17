#!/bin/bash

if [ $STRESS-CPU ]; then
  echo "Stressing CPU"
  ENV="$ENV --cpu $CPU"
fi

if [ $STRESS-MEMORY ]; then
  echo "Stressing memory"
  ENV="$ENV --vm $VM --vm-bytes $BYTES"
fi

echo "stress-ng $ENV"

stress-ng $ENV
