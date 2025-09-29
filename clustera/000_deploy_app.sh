#!/bin/bash
oc new-app https://github.com/bmarlow/Ingress_mesh_2 --context-dir=clustera --strategy=docker --name=app1
