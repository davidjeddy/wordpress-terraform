#!/bin/#!/usr/bin/env bash
ping ${TARGET_IP}
ssh -i admin@${TARGET_IP}

ping ${TARGET_DNS}
wget http://${TARGET_DNS}
wget http://www.${TARGET_DNS}
wget https://${TARGET_DNS}
wget https://www.${TARGET_DNS}
