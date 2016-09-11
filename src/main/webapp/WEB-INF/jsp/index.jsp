<!DOCTYPE HTML>
<html manifest="">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="ctx"  value="http://${header['host']}${pageContext.request.contextPath}"/>
<script type="text/javascript">
var contextPath = "<%=this.getServletContext().getContextPath() %>";
var staticExtPath = "/static/sos_jni_extjs/";
</script>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>Sos.jni</title>

    
    <script type="text/javascript">
        var Ext = Ext || {}; // Ext namespace won't be defined yet...

        // This function is called by the Microloader after it has performed basic
        // device detection. The results are provided in the "tags" object. You can
        // use these tags here or even add custom tags. These can be used by platform
        // filters in your manifest or by platformConfig expressions in your app.
        //
        Ext.beforeLoad = function (tags) {
            var s = location.search,  // the query string (ex "?foo=1&bar")
                profile;

            // For testing look for "?classic" or "?modern" in the URL to override
            // device detection default.
            //
            if (s.match(/\bclassic\b/)) {
                profile = 'classic';
            }
            else if (s.match(/\bmodern\b/)) {
                profile = 'modern';
            }
            else {
                profile = tags.desktop ? 'classic' : 'modern';
                //profile = tags.phone ? 'modern' : 'classic';
            }

            Ext.manifest = profile; // this name must match a build profile name

            // This function is called once the manifest is available but before
            // any data is pulled from it.
            //
            //return function (manifest) {
                // peek at / modify the manifest object
            //};
        };
    </script>
    
    
    <!-- The line below must be kept intact for Sencha Cmd to build your application -->
    <script id="microloader" data-app="04485f02-8bc3-45fa-8367-607dc837f188" type="text/javascript" src="${ctx}/static/sos_jni_extjs/bootstrap.js?dc_='<%=new java.util.Date().getTime()%>'"></script>

</head>
<body></body>
</html>