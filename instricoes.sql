alter table alunos 
add celular varchar(20);

alter table matriculas 
modify column curso varchar(150);

alter table matriculas
add constraint fk_matricula_aluno
foreign key (aluno_id)
references alunos(id);

create view vw_alunos_matriculas as
select a.id, a.nome, m.curso, m.data_matricula from alunos a
join matriculas m on a.id = m.aluno_id;

select * from vw_alunos_matriculas;