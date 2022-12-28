# Probando conexión MySQL-Springboot

Los pasos que realicé fueron los siguientes:
- Descargué  e instalé el driver Connector/J 8.0.25, MySQL server y MySQL Workbench
- Inicié servicio MYSQL80

    ![2022-12-28_18h17_59](https://user-images.githubusercontent.com/72228855/209873451-6fae6a49-f143-4312-819a-3b3815783083.png)


- Desde el cmd cree la base de datos de la siguiente forma: 
    - escribo : cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
    - una vez que ingreso escribo: mysql -u root -p 
    - luego que ingresé escribo: show databases (para ver que bases de datos tengo)
    - creo mi base de datos libreta con el comando: create database libreta;
    - para utilizar esta base de datos uso el comando: use libreta;
    - ahi empiezo a crear las tablas con el comando: create table (seguido de nombre de tabla y los atributos)
    - luego para ver como quedó creada la tabla uso el comando: describe (nombre_tabla)
    - Voy a MySQL Worbench y creo una nueva conexión o utilizo una existente y verifico que la conexión funcione.
    - En MySQL Workbench verifico que si la base de datos figura allí en la conexión que voy a usar.
    - Desde IntelliJ configuro el driver mysql de la siguiente forma:
    
      ![2022-12-28_16h22_59](https://user-images.githubusercontent.com/72228855/209869773-50d5f7fb-6b48-412b-9b99-56877babfdf7.png)

    
    - Luego en IntelliJ edito el archivo application.properties con la configuración
    
      ![2022-12-28_17h13_24](https://user-images.githubusercontent.com/72228855/209869585-4cfdc847-d1c0-4e4c-a023-41541c08b732.png)
      
      
      
    - Agrego los datos de conexión en JpaBuddy
    
      ![2022-12-28_16h24_20](https://user-images.githubusercontent.com/72228855/209870355-e022ed0f-fcdc-41d1-afb7-bcc4d2071e3f.png)
      
    - Pruebo la conexión
    
      ![2022-12-28_16h34_20](https://user-images.githubusercontent.com/72228855/209870871-946ec934-addd-49de-816e-269ef5467fe6.png)

    - Si hay algo mal configurado se muestra lo siguiente
      
      ![2022-12-28_17h56_23](https://user-images.githubusercontent.com/72228855/209871193-e9ddd065-5264-4893-b3de-ff25f8204de2.png)

    

    
