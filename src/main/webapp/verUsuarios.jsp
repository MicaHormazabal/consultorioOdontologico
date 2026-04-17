<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
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
                        
                        <h1 class="h3 mb-2 text-gray-800">VER USUARIOS</h1>
                        
                        <p class="mb-4">Lista completa de usuarios
                        </p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre</th>
                                                <th>Rol</th>
                                                <th style=" width: 210px">Acción</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre</th>
                                                <th>Rol</th>
                                                <th style=" width: 210px">Acción</th>
                                            </tr>
                                        </tfoot>
                                        
                                        <%
                                          List<Usuario> listaUsuarios = (List)request.getSession().getAttribute("listaUsuarios");
                                        %>
                                        
                                        <tbody>
                                            <% for(Usuario user : listaUsuarios){ %>
                                            <tr>
                                                <td> <%= user.getId_usuario() %> </td>
                                                <td> <%= user.getNombreUsuario() %> </td>
                                                <td> <%= user.getRol() %> </td>
                                                
                                                <td style="display:flex; width: 230px;">
                                                    <form name="eliminar" action="SvEliminarUsuario" method="POST">
                                                        <button type="submit" 
                                                            class="btn btn-primary btn-user btn-block"
                                                            style="background-color: red; margin-right: 5px;"
                                                        >
                                                            <i class="fas fa-trash-alt"></i>
                                                            Eliminar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= user.getId_usuario() %>">
                                                    </form>
                                                    
                                                    <form name="editar" action="SvEditarUsuario" method="POST">
                                                        <button type="submit" 
                                                            class="btn btn-primary btn-user btn-block"
                                                            style="margin-left: 5px;"
                                                        >
                                                            <i class="fas fa-pencil-alt"></i>
                                                            Editar
                                                        </button>
                                                        <input type="hidden" name="id" value="<%= user.getId_usuario() %>">
                                                    </form>
                                                </td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>                
                </div>
                
                <%@include file="components/footer.jsp" %>
            </div>
        </div>
            
        <%@include file="components/finalBody.jsp" %>
    </body>
</html>
