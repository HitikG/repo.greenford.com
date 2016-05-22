<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JLT.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Junior Leadership Team</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, minimal-ui" />
    <meta name="mobile-web-app-capable" content="yes" />
    <meta name="author" content="Hitik Gohil" />

    <!-- external -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300' rel='stylesheet' type='text/css' />

    <!-- Internal -->
    <script src="Scripts/Design/jquery.fullPage.js"></script>
    <script src="Scripts/Design/jquery.slimscroll.min.js"></script>
    <link href="Scripts/Design/jquery.fullPage.css" rel="stylesheet" />
    <link href="Scripts/Custom/Master.css" rel="stylesheet" />

    <link rel="shortcut icon" href="../Images/favicon.ico" />

    <!-- No Idea But Was In The Original Site-->
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
    <!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->
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
                <asp:Image ID="Image1" runat="server" ImageUrl="Images/JLTLogoBackground - Copy.jpg" Height="100%" Width="100%" />
            </div>
        </div>
        <div class="section" id="section3">
            <div class="slide active">
                <div class="HeadSlide">
                    <asp:Image ID="Head" runat="server" ImageUrl="Images/HeadStudents.jpg" Height="100%" Width="100%" />
                </div>
            </div>
            <div class="slide">
                <div class="DepSlide">
                    <asp:Image ID="Deputy" runat="server" ImageUrl="Images/Deputy.jpg" Height="100%" Width="100%" />
                </div>
            </div>
            <div class="slide">
                <div class="memberslide">
                    <asp:Label runat="server" ID="Members" />
                </div>
            </div>
        </div>
    </div>
</body>
</html>
