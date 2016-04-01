#!/bin/bash

salt-run fileserver.update
salt '*' state.apply

