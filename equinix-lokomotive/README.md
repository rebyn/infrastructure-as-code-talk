```bash
export PACKET_AUTH_TOKEN=XXX

export os=linux
export release=$(curl -s https://api.github.com/repos/kinvolk/lokomotive/releases | jq -r '.[0].name')
curl -LO "https://github.com/kinvolk/lokomotive/releases/download/${release}/lokoctl_${release}_${os}_amd64.tar.gz"
tar zxvf lokoctl_${release}_${os}_amd64.tar.gz
sudo cp lokoctl_${release}_${os}_amd64/lokoctl /usr/local/bin
rm -rf lokoctl_${release}_${os}_amd64*
mkdir lokomotive-demo && cd lokomotive-demo
```

```bash
ssh-keygen -t ed25519 -C "rebyn@me.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
```

$ lokoctl cluster apply -v
$ export KUBECONFIG=$(pwd)/assets/cluster-assets/auth/kubeconfig
$ alias k=kubectl
$ kubectl -n httpbin port-forward svc/httpbin 8080
$ curl -s http://localhost:8080/get | jq

$ lokoctl cluster destroy -v