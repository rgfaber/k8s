#! /bin/bash

echo '********************************************************************'
echo 'REF: https://github.com/nats-io/k8s/issues/9#issuecomment-887154588'
echo '********************************************************************'

export KIND_CLUSTER=logatron
export NODE_CP="$KIND_CLUSTER".local-control-plane
export NODE_1="$KIND_CLUSTER".local-worker
export NODE_2="$KIND_CLUSTER".local-worker2
export NODE_3="$KIND_CLUSTER".local-worker3


kubectl label node "$NODE_CP" nats.io/node-external-ip=$(hostname -I | awk '{print $1}')
kubectl label node "$NODE_1" nats.io/node-external-ip=$(hostname -I | awk '{print $1}')
kubectl label node "$NODE_2" nats.io/node-external-ip=$(hostname -I | awk '{print $1}')
kubectl label node "$NODE_3" nats.io/node-external-ip=$(hostname -I | awk '{print $1}')