@ECHO OFF

timeout /t 90 /nobreak

w:
minikube.exe start
cd W:\_stackjudge\stackjudge_runner\k8s\balazskrizsan_com
kubectl.exe apply -k .

timeout /t 10 /nobreak

minikube.exe tunnel