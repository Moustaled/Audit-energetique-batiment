# Installation et déploiement

## macOS(v11.2.1)

### 1.Python

MyEMSExigencePythonla version est dans3.8+, ici on utilisebrewpour installer la dernière version de`Python3.9`Version,mais vous devez d'abord installer`Xcode Command Line Tools`, sinon l'installation depythongénérera une erreur.
```bash
$ xcode-select --install
```
Installez ensuitepython3

```shell
$ brew search python3 //installe la dernière version par défaut3.10
$ python3 -V
Python 3.10.1 //InstallationPython3 OK
```
Les réseaux domestiques peuvent ralentir l'installation ; configurez un miroir de ressources local
```shell
$echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles' >> ~/.zshrc
$source ~/.zshrc
```

### 2.MySQL

MyEMSutilise par défautMySQL8.0, également avecbrewpour installer
```shell
$ brew install mysql
$ mysql_secure_installation //Paramétrage initialmysql rootmot de passe et si l'accès depuis une IP externeIPest autorisé
$ brew services start mysql //DémarragemysqlService

$ mysql -u root -pmot de passe
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.28 Homebrew

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```
Initialisez ensuite la base de données et clonez[myems](https://github.com/myems/myems)en local.
```shell
$ git clone https://github.com/myems/myems.git
$ cd myems/myems-database
$ mysql -u root -pmot de passe //usagerootConnexionmysql
mysql>
source myems_billing_db.sql
source myems_carbon_db.sql
source myems_energy_baseline_db.sql
source myems_energy_db.sql
source myems_fdd_db.sql
source myems_historical_db.sql
source myems_production_db.sql
source myems_reporting_db.sql
source myems_system_db.sql
source myems_user_db.sql

mysql> show databases;  // vérifier que la base de données a bien été importéeOK
+---------------------------+
| Database                  |
+---------------------------+
| information_schema        |
| myems_billing_db          |
| myems_carbon_db           |
| myems_energy_baseline_db  |
| myems_energy_db           |
| myems_energy_model_db     |
| myems_energy_plan_db      |
| myems_energy_prediction_db|
| myems_fdd_db              |
| myems_historical_db       |
| myems_production_db       |
| myems_reporting_db        |
| myems_system_db           |
| myems_user_db             |
| mysql                     |
| performance_schema        |
| sys                       |
+---------------------------+
13 rows in set (0.02 sec)
```

### 3.Déploiementmymes-apiService
Installationpythonbibliothèques de dépendances
```shell
# Installationanytree
$ cd ~/tools
$ git clone https://github.com/c0fec0de/anytree.git
$ cd anytree
$ sudo python3 setup.py install 


# Installationsimplejson
$ pip3 install simplejson

# Installationmysql-connector-python
$ cd ~/tools
$ wget https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-8.0.28.tar.gz
$ tar xzf mysql-connector-python-8.0.28.tar.gz
$ cd ~/tools/mysql-connector-python-8.0.28
$ sudo python3 setup.py install

# InstallationFalcon
$ mkdir ~/tools/falcon && cd ~/tools/falcon
$ pip3 install -i https://pypi.doubanio.com/simple/ cython falcon falcon-cors falcon-multipart  //-il'option -i ajoute un proxy local et accélère l'installation

# Installationgunicorn
$ pip3 install -i https://pypi.doubanio.com/simple/  gunicorn

# Installer les autres composants
$ cd ~/tools  
$ wget https://foss.heptapod.net/openpyxl/et_xmlfile/-/archive/branch/default/et_xmlfile-branch-default.tar.gz
$ tar xzf et_xmlfile-branch-default.tar.gz
$ cd ~/tools/et_xmlfile-branch-default
$ sudo python3 setup.py install

$ pip3 -i https://pypi.doubanio.com/simple/ install  jdcal Pillow


$ cd ~/tools
$ wget https://foss.heptapod.net/openpyxl/openpyxl/-/archive/branch/3.0/openpyxl-branch-3.0.tar.gz
$ tar xzf openpyxl-branch-3.0.tar.gz
$ cd openpyxl-branch-3.0
$ sudo python3 setup.py install
```

Si après l'installation la ligne de commande indique toujours qu'elle est introuvable, configurez`.zshrc`configurez`$PATH`
```shell
$ vim ~/.zshrc
export PATH="/usr/local/Cellar/python@3.9/3.9.1_8/Frameworks/Python.framework/Versions/3.9/bin:$PATH
$ source ~/.zshrc
```

### 4.En servicemyems-apiService
```shell
$ cd myems/myems-api
$ gunicorn -b 0.0.0.0:8000 app:api
[2021-02-16 22:21:46 +0800] [3252] [INFO] Starting gunicorn 20.0.4
[2021-02-16 22:21:46 +0800] [3252] [INFO] Listening at: http://0.0.0.0:8000 (3252)
[2021-02-16 22:21:46 +0800] [3252] [INFO] Using worker: sync
[2021-02-16 22:21:46 +0800] [3253] [INFO] Booting worker with pid: 3253

//Démarrage réussi
```

### 5.Vérificationmyems-apiService

Ouvrez votre navigateur et accédez à[http://0.0.0.0:8000/version](http://0.0.0.0:8000/version) 
Si les informations de version s'affichent, le service a démarré correctement.
```json
{
"version": "MyEMS 4.12.0",
"release-date": "2024-12-21",
"website": "https://myems.cn"
}
```