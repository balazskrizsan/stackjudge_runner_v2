### type:

* master: from k8s
* dev: from IDE as development
* test: for test run

### app port digit info:

* 1: cluster     (minikube mk=4)
* 2: app+service (soidc=0, stackjudge-backend=1, stackjudge-psql=2)
* 3-4: service   (app, db)
* 5: https/ssl   (1=true, 0=false, x=1+0)

| cluster    | app   | service          | type   | port  |
|------------|-------|------------------|--------|-------|
| SimpleOIDC | ===   | ===              | ===    | ===   |
| mk         | soidc | ids-app          | master | 4000x |
| mk         | soidc | ids-app          | dev    | 4001x |
| mk         | soidc | ids-psql         | dev    | 40010 |
| mk         | soidc | ids-psql         | master | 40020 |
| mk         | soidc | ids-psql         | test   | 40020 |
| Stackjudge | ===   | ===              | ===    | ===   |
| mk         | sj    | backend-app      | master | 4100x |
| mk         | sj    | backend-app      | dev    | 4101x |
| mk         | sj    | backend-psql     | master | 41020 |
| mk         | sj    | backend-psql     | dev    | 41030 |
| mk         | sj    | backend-psql     | test   | 41040 |
| mk         | sj    | backend-redis    | master | 41050 |
| mk         | sj    | backend-redis    | dev    | 41060 |
| mk         | sj    | backend-redis    | test   | 41070 |
| ---        | ---   | ---              | ---    | ---   |
| mk         | sj    | frontend         | master | 4200x |
| mk         | sj    | frontend         | dev    | 4201x |
| ---        | ---   | ---              | ---    | ---   |
| mk         | sj    | ids-app          | master | 4300x |
| mk         | sj    | ids-app          | dev    | 4301x |
| mk         | sj    | ids-psql         | master | 43020 |
| mk         | sj    | ids-psql         | dev    | 43030 |
| mk         | sj    | ids-psql         | test   | 43040 |
| mk         | sj    | notification-app | master | 4400x |
| mk         | sj    | notification-app | dev    | 4401x |
| mk         | sj    | aws-app          | master | 4500x |
| mk         | sj    | aws-app          | dev    | 4501x |
| mk         | sj    | aws-psql         | master | 45020 |
| mk         | sj    | aws-psql         | dev    | 45030 |

Starting the image based master:

* Add to hosts file:
    - 127.0.0.1 stackjudge.dev
    - run: [master--all-in-one-start.yml](k8s%2Fstackjudge%2Fmaster--all-in-one-start.yml)
    - run: minikube(.exe) tunnel
    - optional: minikube(.exe) dashboard
