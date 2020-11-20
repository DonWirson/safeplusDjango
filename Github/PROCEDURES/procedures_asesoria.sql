----INSERTA EN ASESORIA EL ACCIDENTE Y MEDIDAS
create or replace procedure prc_insertar_asesoria_accidente(
    v_propuesta         varchar2,
    v_id_accidente      number,
    v_salida      out number

)is
begin

insert into asesoria (evento,propuesta,asesoria_especial,id_accidente_id,id_fiscalizacion_id) 
                    values ('Accidente',v_propuesta,'No',v_id_accidente,null);
commit;
    v_salida:=1;


    exception 
    when others then 
        v_salida:=0;

end;

----INSERTA EN ASESORIA DE LA FISCALIZACION Y MEDIDAS
create or replace procedure prc_insertar_asesoria_fiscalizacion(
    v_propuesta         varchar2,
    v_id_fiscalizacion_id     number,
    v_salida      out number

)is
begin

insert into asesoria        (evento,propuesta,asesoria_especial,id_accidente_id,id_fiscalizacion_id) 
                    values ('Fiscalizacion',v_propuesta,'Si',null,v_id_fiscalizacion_id);
commit;
    v_salida:=1;


    exception 
    when others then 
        v_salida:=0;

end;
