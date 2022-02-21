# setup_k8s

- 쿠버네티스 세팅을 위한 설정 모음 

## Directories 

- [build-tools](./build-tools.md) 
  + [another](https://github.com/anarinsk/til/blob/master/kubernetes/kaniko.md)
- [dstools-deployment](https://github.com/anarinsk/til/blob/master/kubernetes/launch-dstools.md)

### Structure 

- 각 디렉토리의 서브 디렉토리는 platform 별로 구성되어 있다. 
- 각각 필요한 경우가 아니면 파일 이름에 구분자를 넣지 않는다. 

- build-tools
    + kaniko-amd64: 카니코 툴을 쓴 amd64 빌드 
    + kaniko-m1: 카니코 툴을 쓴 m1  빌드 

- dstools-deployment 
    + amd64 
    + m1 



## MISC 

- [matplotlib 한글 폰트 설정 유무 ](https://github.com/anarinsk/til/blob/master/python/check-matplotlb-korfont.md)
- 로컬 docker image를 쓸 수는 없는가? 
  + k8s의 개념과 다소 맞지 않는다. node-pod 개념으로 진행되는 체계에서 이게 가능하려면 별도의 docker registry pod를 설정해주는 방법이 있겠지만... 
- rancher windows에서 실행할 때 반드시 terminal을 관리자 모드에서 실행해야 한다. 그렇지 않으면 에러 뜬다. 

