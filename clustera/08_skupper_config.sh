#!/bin/bash
# establish a site
skupper site create [sitename] --enable-link-access
# create a token so cluster b can join
skupper token issue clusterb-token.yaml
# create a listener for app1 (this allows clusterb to send traffic for app1 here)
skupper listener create app1 8080
# create a connector for app2 (to send traffic to cluster b for app2)
skupper connector create app2 8080 --workload deployment/app2

