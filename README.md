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

## Install
  Insure that a gitea-box is stored in the rkt image cache. gitea work
  directory should be some hwre with decent storage for the repos. the
  gitea/backup should mounted somewhere like a NAS.

  Install command will install a gitea.service file to the /etc/systemd/system
  folder and assign proper absolute paths to the host.
```
$> ./bin/rkt install gitea
```

## Usage

| Command | Flags            | Description                                                                         |
| ------- | -----            | -----------                                                                         |
| [none]  |                  | Start rkt container interactive mode                                                |
| launch  | --dnsname=string | Start rkt container and run ./bin/rkt/launch                                        |
| rebuild |                  | Build a new rkt container aci based  on command for ./bin/rkt/build ./bin/rkt/start |

## Build gitea-box
```
$> ./bin/rkt --rebuild
```

