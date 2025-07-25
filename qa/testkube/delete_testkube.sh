#!/bin/bash
# Script to delete all TestKube CRDs from the cluster
# Usage: ./delete_testkube_crds.sh

set -e

CRDS=(
  scripts.tests.testkube.io
  templates.tests.testkube.io
  testexecutions.tests.testkube.io
  tests.tests.testkube.io
  testsources.tests.testkube.io
  testsuiteexecutions.tests.testkube.io
  testsuites.tests.testkube.io
  testtriggers.tests.testkube.io
  testworkflowexecutions.testworkflows.testkube.io
  testworkflows.testworkflows.testkube.io
  testworkflowtemplates.testworkflows.testkube.io
  webhooks.executor.testkube.io
  webhooktemplates.executor.testkube.io
)

for crd in "${CRDS[@]}"; do
  echo "Deleting CRD: $crd"
  kubectl delete crd "$crd" --ignore-not-found
done

echo "All TestKube CRDs deleted." 
