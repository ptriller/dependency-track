<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="e" uri="https://www.owasp.org/index.php/OWASP_Java_Encoder_Project" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/fragments/header.jsp"/>
    <title>OWASP Dependency-Track - License</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/navbar.jsp"/>
<div class="container-fluid" id="main">
    <div class="content-row">
        <div class="col-sm-12 col-md-12">
            <h3 id="licenseName"></h3>

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
                                    <td id="generalLicenseName"></td>
                                </tr>
                                <tr>
                                    <td>SPDX License ID:</td>
                                    <td id="generalLicenseId"></td>
                                </tr>
                                <tr>
                                    <td>OSI Approved:</td>
                                    <td id="generalOsiApproved"></td>
                                </tr>
                                <tr>
                                    <td>Deprecated:</td>
                                    <td id="generalDeprecated"></td>
                                </tr>
                                <tr>
                                    <td>Comments:</td>
                                    <td id="generalComments"></td>
                                </tr>
                                <tr>
                                    <td>See Also:</td>
                                    <td id="generalSeeAlso"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><img id="generalOsiLogo" src="<c:url value="/images/osi-logo.svg"/>" width="100"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="tab-pane" id="textTab">
                            <div id="licenseText" class="formattedLicenseContent"></div>
                        </div>
                        <div class="tab-pane" id="templateTab">
                            <div id="templateText" class="formattedLicenseContent"></div>
                        </div>
                        <div class="tab-pane" id="headerTab">
                            <div id="headerText" class="formattedLicenseContent"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div> <!-- /main-row> -->
    </div>

    <jsp:include page="/WEB-INF/fragments/common-modals.jsp"/>
</div>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
<script type="text/javascript" src="<c:url value="/license/functions.js"/>"></script>
</body>
</html>