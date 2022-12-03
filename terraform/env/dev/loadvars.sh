#!/bin/bash
export $(terraform output | sed 's/\s*=\s*/=/g' | xargs)