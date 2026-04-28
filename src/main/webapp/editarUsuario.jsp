<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/header.jsp"%>
    
    <body id="page-top">
        <div id="wrapper">
            <%@include file="components/sidebar.jsp"%>
            
            <div id="content-wrapper" class="d-flex flex-column">
                
                <div id="content">
                    
                    <%@include file="components/topbar.jsp" %>
                    
                    
                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        
                        <h1 class="h3 mb-0 text-gray-800">EDITAR USUARIO</h1>
                        
                        <!-- traigo el user guardado en la sesión -->
                        <% Usuario user = (Usuario)request.getSession().getAttribute("userParaEditar"); %>

                        <form class="user mt-3" action="SvEditarUsuario" method="POST">

                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" 
                                       id="nombreusu"
                                       name="nombreusu"
                                       placeholder="Nombre de usuario"
                                       value="<%= user.getNombreUsuario() %>"
                                >
                            </div>
                            
                            <div class="col-sm-6 mb-3">
                                <input type="password" class="form-control form-control-user" 
                                       id="contrasenia"
                                       name="contrasenia"
                                       placeholder="Contraseña"
                                       value="<%= user.getContrasenia() %>"
                                >
                            </div>

                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" 
                                       id="rol"
                                       name="rol"
                                       placeholder="Rol"
                                       value="<%= user.getRol() %>"
                                >
                            </div>
                            
                            <button type="submit" class="btn btn-primary btn-user btn-block col-sm-6">
                                Editar Usuario
                            </button>

                        </form>                        
                    </div>                
                </div>
                
                <%@include file="components/footer.jsp" %>
            </div>
        </div>
            
        <%@include file="components/finalBody.jsp" %>
    </body>
</html>
