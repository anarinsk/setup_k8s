## Build-tools

https://github.com/GoogleContainerTools/kaniko/blob/main/docs/tutorial.md

- Kaniko를 활용해서 docker 및 별도의 빌드 툴 없이 빌드하는 방법 
- Kaniko를 쿠버네티스의 포드로 만들고 빌드를 한 후 이미지를 리포에 올리는 방식 

### How to do 

- 먼저 dockerhub 관련 크리덴셜을 설정한다. 

```shell
kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v1/ --docker-username=anarinsk --docker-password=PASSWORD --docker-email=anarinsk@gmail.com
```

- 퍼시스턴트 볼륨과 퍼시스턴트 볼륨 클레임을 설정한다. 

```shell
kubectl create -f volume.yaml 
kubectl create -f colume-claim.yaml 
```

- 마지막으로 파드를 올려준다. 그 전에 확인해야 할 것들 
    + 파드를 올리기 전에 이미지를 올릴 도커 허브 주소
    + dockerfile 이름

```shell
kubectl create -f pod.yaml 
```

- 제대로 작동하면 
    + 이미지를 끌어와서 빌드를 마친 후 
    + 도커 허브에 푸시한다. 
    + 잘 마치면 status에 completed가 뜬다. 

### Trouble shooting 

- 쿠버네티스의 상태를 모두 보는 명령 `kubectl get all`
- 쿠버네티스 pv, pvc의 상태를 보는 명령 `kubectl get pv(c)`
- 쿠버네티스의 파드를 지우는 명령어 `kubectl delete pod/YOUR-POD`
- 쿠버네티스 pv, pvc를 지우는 명령어 `kubectl delete pv YOUR-PV`
    + pv, pvc의 경우 잘 안지워지는 경우가 있다. 
    + `kubectl patch pv YOUR-PV -p '{"metadata":{"finalizers": null}}'`