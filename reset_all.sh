#!/bin/bash -x

sudo mysql -e 'use ironic; update nodes set provision_state="available" where 1=1; update nodes set power_state="power off" where 1=1;'
