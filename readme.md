app port digit info:

* 1  : cluster   (minikube mk/4)
* 2  : app       (soidc 0, stackjudge sj/1)
* 3-4: service   (ids, psql, java backend, kotlin microservice)
* 5  : https/ssl (true, false)

| cluster | app   | service | https/ssl | type | port  |
|---------|-------|---------|-----------|------|-------|
| mk      | soidc | ids     | http      | dev  | 40000 |
| mk      | soidc | ids     | https     | dev  | 40001 |
| mk      | soidc | ids     | http      | test | 40010 |
| mk      | soidc | ids     | https     | test | 40011 |
| mk      | soidc | psql    | http      | dev  | 40020 |
| mk      | soidc | psql    | https     | dev  | 40021 |
| mk      | soidc | psql    | http      | test | 40030 |
| mk      | soidc | psql    | https     | test | 40031 |
| mk      | sj    | backend | http      | dev  | 41000 |
| mk      | sj    | backend | https     | dev  | 41001 |
| mk      | sj    | backend | http      | test | 41010 |
| mk      | sj    | backend | https     | test | 41011 |


