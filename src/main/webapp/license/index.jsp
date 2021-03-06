<%@page import="alpine.Config" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="e" uri="https://www.owasp.org/index.php/OWASP_Java_Encoder_Project" %>
<%!
    private static final String BUILD_ID = Config.getInstance().getApplicationBuildUuid();
    private static final String VERSION_PARAM = "?v=" + BUILD_ID;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/fragments/header.jsp"/>
    <title>Dependency-Track - License</title>
</head>
<body data-sidebar="licenses">
<jsp:include page="/WEB-INF/fragments/navbar.jsp"/>
<div id="content-container" class="container-fluid require-view-portfolio">
    <div class="content-row main">
        <div class="col-sm-12 col-md-12">
            <h3 class="licenseName"></h3>

            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#generalTab" data-toggle="tab">General</a></li>
                        <li><a href="#textTab" data-toggle="tab">License Text</a></li>
                        <li><a href="#templateTab" data-toggle="tab">Template</a></li>
                        <li><a href="#headerTab" data-toggle="tab">Source Header</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane active" id="generalTab">
                            <table id="licenseGeneralTable">
                                <tr>
                                    <td>License Name:</td>
                                    <td class="licenseName"></td>
                                </tr>
                                <tr>
                                    <td>SPDX License ID:</td>
                                    <td class="licenseId"></td>
                                </tr>
                                <tr>
                                    <td>OSI Approved:</td>
                                    <td class="isOsiApproved"></td>
                                </tr>
                                <tr>
                                    <td>FSF Libre:</td>
                                    <td class="isFsfLibre"></td>
                                </tr>
                                <tr>
                                    <td>Deprecated:</td>
                                    <td class="isDeprecatedLicenseId"></td>
                                </tr>
                                <tr>
                                    <td>Comments:</td>
                                    <td class="licenseComments"></td>
                                </tr>
                                <tr>
                                    <td>See Also:</td>
                                    <td class="seeAlso"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><img id="generalOsiLogo" src="<c:url value="/images/osi-logo.svg"/>" width="100"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="tab-pane" id="textTab">
                            <div class="licenseText formattedLicenseContent"></div>
                        </div>
                        <div class="tab-pane" id="templateTab">
                            <div class="templateText formattedLicenseContent"></div>
                        </div>
                        <div class="tab-pane" id="headerTab">
                            <div class="headerText formattedLicenseContent"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div> <!-- /main-row> -->
    </div>
</div>
<jsp:include page="/WEB-INF/fragments/common-modals.jsp"/>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
<script type="text/javascript" src="<c:url value="/license/functions.js"/><%=VERSION_PARAM%>"></script>
</body>
</html>