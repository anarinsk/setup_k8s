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

[matplotlib 한글 폰트 설정 유무 ](https://github.com/anarinsk/til/blob/master/python/check-matplotlb-korfont.md)
