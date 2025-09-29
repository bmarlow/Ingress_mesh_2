#!/bin/bash
# establish a site
skupper token redeem clusterb-token.yaml
# create a listener for app1 (this allows clustera to send traffic for app2 here)
skupper listener create app2 8080
# create a connector for app1 (to send traffic to clustera for app1)
skupper connector create app1 8080 --workload deployment/app1

