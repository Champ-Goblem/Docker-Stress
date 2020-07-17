#!/bin/bash

if [ $STRESS-CPU == "true" ]; do
  echo "Stressing CPU"
  ENV=$ENV+" --cpu $CPU"
fi

if [ $STRESS-MEMORY == "true" ]; do
  echo "Stressing memory"
  ENV=$ENV+" --vm $VM --vm-bytes $VM-BYTES"
fi

stress-ng $ENV
