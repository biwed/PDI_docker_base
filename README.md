# PDI_docker_base
Репозитарий создан для последующего использования в качестве базового образа. 
Переменные окружения:
```
    PDI_VERSION=9.0 \ #Соответствует тегу ветки
    PDI_BUILD=9.0.0.0-423 \ #Соответствует, с которого собрали базовый образ
    JAVA_HOME=/usr/local/openjdk-8 \ 
    JRE_HOME=${JAVA_HOME} \
    PENTAHO_JAVA_HOME=${JAVA_HOME} \
    PENTAHO_HOME=/opt/pentaho \
    USER_KETTLE_HOME=/opt/pentaho/data-integration \ #
    USER_KETTLE_REPOSITORY=/opt/pentaho/data-integration/repo #Для интеграции с git
```
USER - для означает, что используется для целей пользователя.
