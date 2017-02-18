#!/bin/bash

#printf '%x' $( echo '[65 66 67 68 69]' | awk '{print substr($0, 2, length($0) - 2)}' ) | xxd -r -p

printf '%x' $( kubectl get secret --namespace default jenkins-jenkins -o jsonpath="{.data.jenkins-admin-password}" | awk '{print substr($0, 2, length($0) - 2)}' ) \
| xxd -r -p

