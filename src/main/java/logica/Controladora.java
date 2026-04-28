package logica;

import java.util.ArrayList;
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

    public Usuario getUsuario(int id_usuario) {
        return controlPersis.getUsuario(id_usuario);        
    }

    public void editarUsuario(Usuario user) {
        controlPersis.editarUsuario(user);
    }

    public boolean validarIngreso(String usuario, String contrasenia) {
    
        boolean ingreso = false;
        
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.getUsuarios();
        
        for(Usuario user : listaUsuarios){
            if (user.getNombreUsuario().equals(usuario)) {
                if (user.getContrasenia().equals(contrasenia)) {
                    ingreso = true;                    
                }                
            }
        }
        
        return ingreso;
    }
     
}
 