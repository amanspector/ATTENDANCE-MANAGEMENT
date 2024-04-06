<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" EnableSessionState="True" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    b {
        color: red;
    }
</style>
        <link rel="stylesheet" type="text/css" href="~/Styles/SiteSheet.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
          crossorigin="anonymous"/>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
            integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
            crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">

    <center>
    <br/>
        <div style="font-size: large; font-weight: bold"> Welcome to </div>
        <a class="navbar-brand" href="#"><img alt="logo" src="image/logo.png" height="200px"/></a>
        <h1 style="padding-top: 50px;">Login</h1>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4 mt-5">
                        <div class="mb-3 row">
                            <label for="username" class="col-lg-4 col-form-label">Username</label>
                            <div class="col-sm-8">
                                <input type="text" name="username" class="form-control" id="input1" placeholder="your username" />
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="password" class="col-lg-4 col-form-label">Password</label>
                            <div class="col-sm-8">
                                <input type="password" name="password" class="form-control" id="input1" placeholder="your password" />
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary col-md-3 col-md-offset-7" value="Login"
                            name="login" />
                    <br />
                </div>
            </div>
        </div>
        <br />
        <asp:Label ID="err" runat="server"></asp:Label>
        <br />
    </center>
    </form>
</body>
</html>
