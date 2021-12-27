# WINDOWS

     1 - INSTALL Docker for windows
     2 - INSTALL GIT for windows
          Selected Enable symbolic links
          Selected Checkout as-is / Commit Unix-Style line endings
     3 - Download mapasculturais-docker-developer
     4 - Execute following comands
          4.1 - Execute in folder ./www/ $ git clone https://github.com/secultce/mapasculturais.git
          4.2 - Execute in folder ./mapasculturais/ $ git checkout homolog
          4.3 - UPDATE AND COPY config.php TO  www/mapasculturais/src/protected/application/conf
     5 - Execute following comands in root folder
          5.1 $ docker-compose -f docker-compose.yml up
     6 - Access http://localhost:8080 in your browser

# LINUX

     1 - INSTALL Docker
     2 - Download mapasculturais-docker-developer
     3 - Execute following comands
         3.1 - Execute in folder ./www/ $ git clone https://github.com/secultce/mapasculturais.git
         3.2 - Execute in folder ./mapasculturais/ $ git checkout homolog
         3.3 - UPDATE AND COPY config.php TO  www/mapasculturais/src/protected/application/conf
     4 - Execute following comands in root folder
          4.1 $ docker-compose -f docker-compose.yml up
     5 - Access http://localhost:8080 in your browser
