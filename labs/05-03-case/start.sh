#!/bin/bash
sudo clean-working-dir
sudo mv /labs/05-03-case/assets/print-car-brand.sh /home/moon; sudo chown moon:moon /home/moon/print-car-brand.sh; sudo chmod +x /home/moon/print-car-brand.sh

sudo mkdir /tmp/assets
sudo mv /labs/05-03-case/assets/calculator-test.sh /tmp/assets; sudo chown moon:moon /tmp/assets/calculator-test.sh; sudo chmod +x /tmp/assets/calculator-test.sh