@ECHO OFF

w:
minikube.exe start
cd W:\_stackjudge\stackjudge_runner\k8s\balazskrizsan_com
kubectl.exe apply -k .
