git clone https://github.com/LuisDistribuida2023/TAREA01.git && cd ./TAREA01 && cd ./app-authors && gradlew quarkusBuild && docker build -t lebriones2/app-authors:1.0.0 . && cd .. && cd ./app-books && gradlew installDist && gradlew copyLibs && docker build -t lebriones2/app-books:1.0.0 . && cd .. && cd ./app-web && gradlew installDist && gradlew copyLibs && docker build -t lebriones2/app-web:1.0.0 . && docker push lebriones2/app-web:1.0.0 && docker push lebriones2/app-books:1.0.0 && docker push lebriones2/app-authors:1.0.0 && cd .. && docker-compose up
