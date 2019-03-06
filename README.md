# gitea-box
  > Start a good old fashioned gitea instance

  ```
  gitea
  ├── conf
  │   └── app.ini
  ├── data
  │   ├── gitea.db
  │   ├── indexers
  │   │   └── issues.bleve
  │   │       ├── index_meta.json
  │   │       ├── rupture_meta.json
  │   │       └── store
  │   ├── lfs
  │   ├── sessions
  │   │   └── 8
  │   │       └── d
  │   │           └── 8dc767851e6bbd7d
  │   └── ssh
  │       ├── gogs.rsa
  │       └── gogs.rsa.pub
  └── log
      ├── gitea.log
      ├── http.log
      └── xorm.log
  ```

  [Variables](https://docs.gitea.io/en-us/specific-variables/)

## Build gitea-box
```
$> ./bin/buildAci
$> ls build/gitea-box-20190301.aci
```
