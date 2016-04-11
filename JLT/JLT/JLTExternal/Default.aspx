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
    <!-- This website is created and maintained by Hitik Gohil © 2014 - 2015 -->
    <!-- Using fullPage.js By Alvaro Trigo-->
    <!-- Using slimScroll.js By rochal -->
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
            <div class="text">
                <br />
                <br />
                <br />
                <br />
                <h6>Greenford High School's Junior Leadership Team is a part of the Student Voice,</h6>
                <h6>set up to create a coherent link between students and staff by allowing them to have a practical role within decision making.</h6>
                <h6>We ensure that our members, who go through a rigorous interview process, share their ideas about learning and teaching and the general running of the School to help Greenford develop as an organisation.</h6>
                <h6>By understanding and representing the views of the students, we ensure that Greenford High School is a place where the students are proud of.</h6>
                <h6>The JLT participates We participate by interviewing teachers and providing feedback to the Headteacher, Mr Cramer, to aid his decision from a group of students when recruiting.</h6>
            </div>
        </div>
        <div class="section" id="section3">
            <div class="slide active">
                <div class="sliders">
                    <h1>Members Of The JLT</h1>
                    <p>Head Students</p>
                    <br />
                    <br />
                    <div style="width: 100%;">
                        <div class="Left">
                            <img src="Images/Members/Bazil Saiq.jpg" class="members" />
                            <div class="memberstext">Bazil Saiq</div>
                            <div class="memberstext">Head Boy</div>
                        </div>
                        <div class="Right">
                            <img src="Images/Members/Evelyn Kurotova.jpg" class="members" />
                            <div class="memberstext">Evelyn Kurotova</div>
                            <div class="memberstext">Head Girl</div>
                        </div>
                    </div>
            </div>
        </div>
        <div class="slide">
            <div class="sliders">
                <h1>Members Of The JLT</h1>
                <p>Deputy Head Students</p>
                <br />
                <br />
                <div class="Left">
                    <img src="Images/Members/Awnit Marta.jpg" class="members" />
                    <div class="memberstext">Awnit Marta</div>
                    <div class="memberstext">Deputy Head Boy</div>
                </div>
                <div class="Right">
                    <img src="Images/Members/Mas'Ooda Canfield.jpg" class="members" />
                    <div class="memberstext">Mas'Ooda Canfield</div>
                    <div class="memberstext">Deputy Head Girl</div>
                </div>
            </div>
        </div>
        <div class="slide">
            <div class="sliders">
                <h1>Members Of The JLT</h1>
                <p>Assistant Students</p>
                <br />
                <br />
                <div class="Left">
                    <img src="Images/Members/Gangaveer Hunjan.jpg" class="members" />
                    <div class="memberstext">Gangaveer Hunjan</div>
                    <div class="memberstext">Assistant Head Boy</div>
                </div>
                <div class="Right">
                    <img src="Images/Members/Devi Joshi.jpg" class="members" />
                    <div class="memberstext">Devi Joshi</div>
                    <div class="memberstext">Assistant Head Girl</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
