#!/bin/bash

mail $1 << MYTEXT
  Type anything what you want to say.
  Use more predefined variables if possible.
  -$USER
MYTEXT
echo "a mail is sent to $1."

