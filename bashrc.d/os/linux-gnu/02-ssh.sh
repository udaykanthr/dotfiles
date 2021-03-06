#!/bin/sh
#
# Copyright 2012 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Author: yesudeep@google.com (Yesudeep Mangalapilly)

# Setting up SSH keychain to stop the annoying passphrase prompts.
if [ -e $HOME/.ssh/id_rsa ]; then
  eval `keychain --eval ~/.ssh/id_rsa`
  #redirect ~/.ssh-agent output to /dev/null to zap the annoying
  #"Agent PID" message
  #source ~/.ssh-agent > /dev/null
fi
