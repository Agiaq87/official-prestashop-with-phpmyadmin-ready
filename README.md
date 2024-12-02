# official-prestashop-with-phpmyadmin-ready
Docker compose of official Prestashop image with ready to use phpmyadmin

# DESCRIPTION
Docker compose file base on official Prestashop image https://hub.docker.com/r/prestashop/prestashop/, added PhpMyAdmin for manage DB simply 

# CONFIGURATION
- All container are already network connected
- DB:
    - PORT: 3306
    - USER: root
    - PASS: admin
- PHPMYADMIN:
    - Nothing to do, it's already configured and READY TO USE
- PRESTASHOP:
    - INSTALL FOLDER: localhost:8080/install4577
    - DB HOST: some-mysql
    - DEV MODE: disable (0)
    - ADMIN FOLDER: localhost:8080/admin4577

# INSTALL
- Clone repo in your folder
- Open terminal with selected folder
- Type "docker compose up"
