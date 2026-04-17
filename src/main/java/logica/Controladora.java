package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    public void crearUsuario(String nombreUser, String contrasenia, String rol){
        
        Usuario nuevoUser = new Usuario();
        nuevoUser.setNombreUsuario(nombreUser);
        nuevoUser.setContrasenia(contrasenia);
        nuevoUser.setRol(rol);
        
        controlPersis.crearUsuario(nuevoUser);
    }

    public List<Usuario> getUsuarios() {
        return controlPersis.getUsuarios();
    }

    public void eliminarUsuario(int id_usuario) {
        controlPersis.eliminarUsuario(id_usuario);
    }
     
}
 