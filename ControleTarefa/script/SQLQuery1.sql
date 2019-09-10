CREATE TABLE TB_TAREFA  
(  
 id int IDENTITY(1,1),  
 descricao varchar (20),  
 dataAtividade date,  
 dataEntrega date,  
 dataLimiteEntrega date,  
 diagnostico varchar(30)  
);  


selecT*from TB_TAREFA