/* select admin0_.email as email1_0_0_, admin0_.password as password2_0_0_ from admin admin0_ where admin0_.email=?
 select movie0_.movieid as movieid1_1_0_, movie0_.collection as collecti2_1_0_, movie0_.movie_name as movie_na3_1_0_ from movie_table movie0_ where movie0_.movieid=?
 select movie0_.movieid as movieid1_1_0_, movie0_.collection as collecti2_1_0_, movie0_.movie_name as movie_na3_1_0_ from movie_table movie0_ where movie0_.movieid=?
 select * from movie_table where lower(movie_name) like concat('%',lower(?),'%')
 select * from movie_table where collection between :c1 AND :c2 
 select * from movie_table where collection between ? AND ?  
 Hibernate: select admin0_.email as email1_0_0_, admin0_.password as password2_0_0_ from admin admin0_ where admin0_.email=?

 */