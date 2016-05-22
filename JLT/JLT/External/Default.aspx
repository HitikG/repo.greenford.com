<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JLT.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Junior Leadership Team</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, minimal-ui" />
    <meta name="mobile-web-app-capable" content="yes" />
    <meta name="author" content="Hitik Gohil" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="Scripts/jquery.fullPage.js"></script>
    <script src="Scripts/jquery.slimscroll.min.js"></script>
    <link href="Content/jquery.fullPage.css" rel="stylesheet" />
    <link href="Content/Master.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300' rel='stylesheet' type='text/css' />
    <link rel="shortcut icon" href="../Images/favicon.ico" />
    <!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->
    <script type="text/javascript" src="../jquery.fullPage.js"></script>
    <script type="text/javascript" src="examples.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#fullpage').fullpage({
                anchors: ['Main', 'Mission', 'Members', '4thpage', 'lastPage'],
                easingcss3: 'cubic-bezier(0.175, 0.885, 0.320, 1.275)',
                scrollOverflow: true
            });
        });
    </script>
    <!-- This website is created and maintained by Hitik Gohil © 2014 - 2016 -->
    <!-- Using fullPage.js By Alvaro Trigo-->
    <!-- Using slimScroll.js By rochal -->
    <!--CC Attribution-NonCommercial-NoDerivs Redistribution is allowed for noncommercial use and without any modification.-->
</head>

<body oncontextmenu="return false">
    <div id="fullpage">
        <div class="section" id="section0">
            <div class="thumbnail text-center">
                <img src="Images/GroupPhoto.jpg" class="background" />
                <div class="caption">
                    <p>The Junior Leadership Team</p>
                </div>
            </div>
        </div>
        <div class="section section1" id="section1">
            <div class="back">
            </div>
        </div>
        <div class="section" id="section3">
            <div class="slide active">
                <div class="HeadSlide">
                    <asp:Image ID="Head" runat="server" ImageUrl="~/Images/HeadStudents.jpg" Height="100%" Width="100%" />
                </div>
            </div>
            <div class="slide">
                <div class="DepSlide">
                    <asp:Image ID="Deputy" runat="server" ImageUrl="~/Images/Deputy.jpg" Height="100%" Width="100%" />
                </div>
            </div>
            <div class="slide">
            </div>
        </div>
    </div>
</body>
</html>
