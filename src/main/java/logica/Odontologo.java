package logica;

import java.util.Date;
import java.util.List;

public class Odontologo extends Persona {
    
    private int id_odonto;
    private String especialidad;
    private Horario horario;
    private Usuario usuario;
    private List<Turno> listaTurnos;

    public Odontologo() {
    }

    public Odontologo(int id_odonto, String especialidad, Horario horario, Usuario usuario, List<Turno> listaTurnos, String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac) {
        super(dni, nombre, apellido, telefono, direccion, fecha_nac);
        this.id_odonto = id_odonto;
        this.especialidad = especialidad;
        this.horario = horario;
        this.usuario = usuario;
        this.listaTurnos = listaTurnos;
    }

    public int getId_odonto() {
        return id_odonto;
    }

    public void setId_odonto(int id_odonto) {
        this.id_odonto = id_odonto;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }
}
