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
                        
                        <h1 class="h3 mb-0 text-gray-800">ALTA ODONTOLOGO</h1>

                        <form class="user mt-3">

                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="dni"
                                    placeholder="DNI">
                            </div>
                            
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="nombre"
                                    placeholder="Nombre">
                            </div>

                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="apellido"
                                    placeholder="Apellido">
                            </div>
                            
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="telefono"
                                    placeholder="Teléfono">
                            </div>
                            
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="direccion"
                                    placeholder="Dirección">
                            </div>
                            
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="fechanac"
                                    placeholder="Fecha de nacimiento">
                            </div>
                            
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control form-control-user" id="especialidad"
                                    placeholder="Especialidad">
                            </div>
                            
                            <a href="" class="btn btn-primary btn-user btn-block col-sm-6">
                                Crear Odontólogo
                            </a>

                        </form>                        
                    </div>                
                </div>
                
                <%@include file="components/footer.jsp" %>
            </div>
        </div>
            
        <%@include file="components/finalBody.jsp" %>
    </body>
</html>
