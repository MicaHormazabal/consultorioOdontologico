package logica;

public class Horario {

    private int id_horario;
    private String horaInicio;
    private String horaFin;

    public Horario() {
    }

    public Horario(int id_horario, String horaInicio, String horaFin) {
        this.id_horario = id_horario;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
    }

    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }    
}
