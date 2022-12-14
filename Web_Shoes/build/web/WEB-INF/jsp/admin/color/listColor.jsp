<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <jsp:include page="../linkcss.jsp"></jsp:include>
        <link rel="stylesheet" href="<c:url value="/resources/frontend/css/toastr.min.css"/>">
            <style>.span-color{width:25px;
                        height:25px;
                        margin-right: 20px;
                        display:inline-block;
                        color:black;
                        cursor:pointer;
                        position:relative;}
                .ps-list--color a {
                    display: inline-block;
                    width: 25px;
                    height: 25px;
                    -webkit-border-radius: 50%;
                    -moz-border-radius: 50%;
                    -ms-border-radius: 50%;
                    border-radius: 50%;

                }
            </style>
        </head>
        <body>

            <div class="container-scroller">
                <!-- partial:partials/_navbar.html -->
            <jsp:include page="../header.jsp"></jsp:include>
                <!-- partial -->
                <div class="container-fluid page-body-wrapper">
                    <!-- partial:partials/_settings-panel.html -->
                <jsp:include page="../head.jsp"></jsp:include>
                    <!-- partial -->
                    <!-- partial:partials/_sidebar.html -->
                <jsp:include page="../menu.jsp"></jsp:include>
                    <!-- partial -->
                    <div class="main-panel">

                        <div class="content-wrapper">

                            <div class="row">
                                <div class="col-md-6 grid-margin ">
                                    <div class="card grid-margin" style="height: 70px;text-align: center;padding:  20px">
                                        <h2>Qu???n L?? M??u S???c</h2>
                                    </div>
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Th??m M???i M??u S???c</h4>
                                            <form class="forms-sample" action="/Web_Shoes/admin/color/saveColor" method="POST" onsubmit="return validate()">
                                                <input hidden name="maMau" id="maMau" value="0"/> 
                                                <div class="form-group">
                                                    <div>
                                                        <label for="exampleInputUsername1">M??u S???c</label>
                                                        <input type="text" class="form-control" placeholder="T??n m??u ..." id="tenMau" name="tenMau"/>
                                                    </div>
                                                    <div class="invalid-feedback" style="display: block;font-size: 15px;color: red"> </div>
                                                </div>
                                                <div class="form-group">
                                                    <div>
                                                        <label for="exampleInputUsername1">M?? M??u</label>
                                                        <input type="color" class="form-control"  id="hexCode" name="hexCode"/>
                                                    </div>
                                                    <div class="invalid-feedback" style="display: block;font-size: 15px;color: red"> </div>
                                                </div>


                                                <button type="submit" class="btn btn-success btn-rounded btn-fw" id="save" value="Insert">L??u</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Danh S??ch M??u S???c</h4>
                                            <div class="table-responsive">
                                                <table id="color" class="table table-striped table-bordered" cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th>M?? M??u</th>
                                                            <th>T??n M??u</th>
                                                            <th>M?? M??u</th>
                                                            <th>L???a Ch???n</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach var="ms" items="${ms}">
                                                        <tr>
                                                            <td class="mau" data-mau="${ms.maMau}">${ms.maMau}</td>
                                                            <td>${ms.tenMau}</td>
                                                            <td class="ps-list--color"><a style="background-color: ${ms.hexCode}"></a></td>
                                                            <td>
                                                                <button type="button" class="btn btn-info btn-rounded btn-fw edit" data-ma="${ms.maMau}" data-ten="${ms.tenMau}" data-hexcode="${ms.hexCode}">S???a</button>
                                                                <button type="button" class="btn btn-info btn-rounded btn-fw delete" onclick="return confirm('Ban chac chan muon xoa?')">x??a</button>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">

                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted &amp; made with <i class="ti-heart text-danger ml-1"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>   
            <!-- page-body-wrapper ends -->
        </div>
        <jsp:include page="../footer.jsp"></jsp:include>
         <script type="text/javascript" src="<c:url value="/resources/frontend/js/toastr.min.js"/>"></script>
        <script>
            $(".delete").on("click", function () {
                    var maMau=$(this).closest("tr").find(".mau").attr("data-mau");
                    
                    $.ajax({
                        url: "${pageContext.request.contextPath}/admin/color/delete",
                        type: "GET",
                        data: {
                            maMau:maMau

                        },
                        success: function (value) {

                            if (!value) {
                               
                               toastr.error('x??a th???t b???i do s???n ph???m ???? ???????c tham chi???u!', 'Error!', {
                                    closeButton: true,
                                    tapToDismiss: false
                                });
                            } else {
                                 toastr.success('x??a th??nh c??ng', 'Success!', {
                                    closeButton: true,
                                    tapToDismiss: false
                                });
                                location.reload();
                                
                            }

                        }

                    })
                });
            $(".edit").on("click", function () {
                var ma = $(this).data("ma");
                var ten = $(this).data("ten");
                var hexcode = $(this).data("hexcode");
                $("#maMau").val(ma);
                $("#tenMau").val(ten);
                $("#hexCode").val(hexcode);

            });
            function validate() {
                var check = true;
                var name = $('#tenMau').val();
                var hexCode = $('hexCode').val();
                if (name == '') {
                    $('#tenMau').parent().next().html('T??n m??u kh??ng ???????c ????? tr???ng');
                    return false;
                }
                else {
                    $('#tenMau').parent().next().html('');

                    return true;
                }
                if (hexCode == '') {
                    $('#hexCode').parent().next().html('T??n b???n ch??a ch???n m?? m??u');
                    return false;
                }
                else {
                    $('#hexCode').parent().next().html('');

                    return true;
                }
                if (name == '') {
                    $('#tenMau').parent().next().html('T??n m??u kh??ng ???????c ????? tr???ng');
                    return false;
                }
                if (hexCode == '') {
                    $('#hexCode').parent().next().html('T??n b???n ch??a ch???n m?? m??u');
                    return false;
                }
                return check;
            }
            ;
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#color').dataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
                });
            });
        </script>
    </body>
</html>
