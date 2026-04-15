package persistencia;

import logica.Usuario;

public class ControladoraPersistencia {
    
    HorarioJpaController horarioJPA = new HorarioJpaController();
    OdontologoJpaController odontoJPA = new OdontologoJpaController();
    PacienteJpaController pacienteJPA = new PacienteJpaController();
    PersonaJpaController personaJPA = new PersonaJpaController();
    ResponsableJpaController responJPA = new ResponsableJpaController();
    SecretarioJpaController secreJPA = new SecretarioJpaController();
    TurnoJpaController turnoJPA = new TurnoJpaController();
    UsuarioJpaController userJPA = new UsuarioJpaController();

    public void crearUsuario(Usuario nuevoUser) {
        userJPA.create(nuevoUser);
    }
    
}
