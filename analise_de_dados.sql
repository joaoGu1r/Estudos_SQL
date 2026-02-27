select *from cursos
order by nome asc;
select *from cursos
order by carga asc;

select *from cursos
order by nome desc;

select *from cursos
order by ano desc;

select nome, carga, ano from cursos
order by ano, nome desc; 

select * from cursos
where ano = '2017'
order by nome;

select nome , descricao, ano from cursos
where ano != '2017'
order by ano , nome;

select nome, ano from cursos
where ano between '2017' and '2024'
order by ano desc, nome asc;


select nome, descricao, ano from cursos
where ano in (2017 , 2024)
order by ano desc, nome asc;

select * from cursos
where  carga > 35 and totaulas < 30
order by ano desc, nome asc;

select * from cursos
where  carga < 35 or totaulas < 30
order by ano desc, nome asc;


