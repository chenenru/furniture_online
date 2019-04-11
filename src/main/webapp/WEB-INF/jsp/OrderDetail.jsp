<%@ page import="com.web.pojo.TbOrderProperty" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>面对疾风商城-个人中心</title>
    <link href="<c:url value='/css'/>/style.css" rel='stylesheet' type='text/css' media="all"/>
    <link href="<c:url value='/css'/>/bootstrap.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
    <script src="<c:url value='/js'/>/bootstrap.min.js"></script>
    <script src="<c:url value='/js'/>/index.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/css'/>/css2/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- MetisMenu CSS -->
    <link href="<c:url value='/css'/>/css2/metisMenu.min.css" rel="stylesheet" media="all">

    <!-- DataTables CSS -->
    <link href="<c:url value='/css'/>/css2/dataTables.bootstrap.css" rel="stylesheet" media="all">

    <!-- Custom CSS -->
    <link href="<c:url value='/css'/>/css2/sb-admin-2.css" rel="stylesheet" media="all">

    <!-- Custom Fonts -->
    <link href="<c:url value='/css'/>/css2/font-awesome.min.css" rel="stylesheet" media="all"
          type="text/css">
    <link href="<c:url value='/css'/>/css2/boot-crm.css" rel="stylesheet" media="all"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script type="text/javascript"
            src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script type="text/javascript"
            src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <script type="text/javascript" src="<c:url value='/js'/>/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="<c:url value='/js'/>/bootstrap.min.js"></script>
    <script type="text/javascript" src="<c:url value='/js'/>/index.js"></script>
    <style type="text/css">
        .banner_y .nav ul li{
            width: 300px;
        }
    </style>
    <!-- jQuery -->
    <script type="text/javascript"
            src="<c:url value='/js'/>/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript"
            src="<c:url value='/js'/>/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script type="text/javascript"
            src="<c:url value='/js'/>/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script type="text/javascript"
            src="<c:url value='/js'/>/jquery.dataTables.min.js"></script>
    <script type="text/javascript"
            src="<c:url value='/js'/>/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script type="text/javascript"
            src="<c:url value='/js'/>/sb-admin-2.js"></script>
</head>
<body>
<!-- 顶部复用代码块 -->
<%@include file="Header.jsp" %>
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li>
                        <%--${order_page}--%>
                        <a href="${pageContext.request.contextPath}/order/all_list"
                           <c:if test="${order_page == 0}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>所有订单</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/order/status_list?order_status=1"
                           <c:if test="${order_page == 1}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>未支付订单</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/order/status_list?order_status=2"
                           <c:if test="${order_page == 2}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>待发货订单</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/order/status_list?order_status=3"
                           <c:if test="${order_page == 3}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已发货订单</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/order/status_list?order_status=4"
                           <c:if test="${order_page == 4}">style="color:#ff6700;font-weight:bold;font-size: 16px;"</c:if>>已收货订单</a>
                    </li>

                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/client/info" >我的个人中心</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <h3 style="color:darkgray;margin:0;" align="center">订单详情</h3>
            <hr style="margin : 10px">
            <div class="order_image fr">
                <img src="<c:url value='/image/'/>${orderProperty.tbProperty.prImage}" width="400px" height="400px"/>
            </div>
            <div class="order_info">

                <P><span>订&nbsp;&nbsp;单&nbsp;&nbsp;号：&nbsp;</span><span>${orderProperty.id}</span></P>
                <P><span>订单状态：</span><span>${order_status}</span></P>
                <P><span>商品名称：</span><span>${orderProperty.tbProduct.pName}</span></P>
                <P><span>商品数量：</span><span>${orderProperty.oNum}</span></P>
                <P><span>商品类别：</span><span>${orderProperty.tbProduct.pType}</span></P>
                <P><span>商品材质：</span><span>${orderProperty.tbProperty.prMaterial}</span></P>
                <P><span>商品颜色：</span><span>${orderProperty.tbProperty.prColor}</span></P>
                <P><span>商品简介：</span><span>${orderProperty.tbProduct.pIntro}</span></P>

                <P><span>订单总价：</span><span>${orderProperty.oTotal}</span></P>
                <P><span>收货地址：</span><span>${orderProperty.oAddress}</span></P>
                <P><span>联系电话：</span><span>${orderProperty.oPhone}</span></P>
                <c:if test="${orderProperty.oDeliver != null && orderProperty.oConfirm == null }">
                    <a class="btn btn-warning fr"
                       href="${pageContext.request.contextPath}/order/orderConfirm?o_id=${orderProperty.id}"> > >点击此处确认收货</a>
                </c:if>
                <P><span>下单时间：</span><span>${orderProperty.oCreate}</span></P>
                <c:if test="${orderProperty.oConfirm != null}">
                    <a href="" class="btn btn-primary fr" data-toggle="modal"
                       data-target="#customerEditDialog">评论该商品</a></c:if>
                <P><c:if test="${orderProperty.oPay == null}"><a class="btn btn-warning"
                                                                 href="${pageContext.request.contextPath}/goAlipay">点此支付</a>&nbsp;&nbsp;
                    <a class="btn btn-warning" href="${pageContext.request.contextPath}
/order/clientRemove?o_id=${orderProperty.id}&pr_id=${orderProperty.tbProperty.id}">取消订单</a></c:if> </P>
                <P><c:if test="${orderProperty.oPay != null}"><span>支付时间：</span><span>${orderProperty.oPay}</span></c:if> </P>

                <P><c:if test="${orderProperty.oDeliver != null}"><span>发货时间：</span><span>${orderProperty.oDeliver}</span></c:if> </P>


                <P><c:if test="${orderProperty.oConfirm != null}"><span>收货时间：</span><span>${orderProperty.oConfirm}</span></c:if> </P>
                <%
                    TbOrderProperty tbOrderProperty = (TbOrderProperty) request.getAttribute("orderProperty");
                    session.setAttribute("orderid", tbOrderProperty.getId() );
                    session.setAttribute("productName",tbOrderProperty.getTbProduct().getpName());
                    session.setAttribute("price",tbOrderProperty.getTbProperty().getPrOutprice() * tbOrderProperty.getoNum());
                    session.setAttribute("num",tbOrderProperty.getoNum());
                %>
            </div>
            <!-- 客户编辑信息框 -->
            <div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
                 aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" id="edit_customer_form">
                                <input type="hidden" id="edit_cust_id" name="id"/>
                                <div class="form-group">
                                    <label for="edit_commentgrade" class="col-sm-2 control-label">打分：</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="edit_commentgrade" name="co_grade">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="edit_commentinfo" class="col-sm-2 control-label">评价：</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="edit_commentinfo" name="co_info">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" onclick="addComment()">评价</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

<!-- self_info -->

<footer class="mt20 center">
    <div>©由莫宽元、赖周浩、陈恩如学习小组进行编写</div>
    <div>本网站所列数据，所列信息都是虚拟信息，除特殊说明，仅供学习参考用途</div>
</footer>
<script type="text/javascript">
    function addComment() {
        var grade = $("#edit_commentgrade").val();
        var info = $("#edit_commentinfo").val();
        alert(grade+" "+info);
        var jsonUser = JSON.stringify({"co_grade":grade,"co_info":info});
        $.ajax({
            url : "${pageContext.request.contextPath }/setcomment?pr_id=${orderProperty.tbProperty.id}",
            type : "POST",
            dataType:"json",
            contentType : "application/json;charset=UTF-8",
            data:jsonUser,
            success:function (data) {
                alert("亲，已收到您的反馈，祝您购物愉快");
                <%--window.location("${pageContext.request.contextPath }/index");--%>
                window.location.href = "${pageContext.request.contextPath }/index";
            }
        });
    }

</script>
</body>
</html>






<%--/goAlipay?orderid=${orderProperty.id}&productName=${orderProperty.tbProduct.pName}--%>
<%--&price=${orderProperty.oTotal}&num=${orderProperty.oNum}--%>
