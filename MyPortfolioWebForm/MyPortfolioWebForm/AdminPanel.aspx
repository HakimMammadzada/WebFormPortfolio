<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="MyPortfolioWebForm.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form runat="server" id="form" enctype="multipart/form-data" method="post">
        <div class="container">
          <i class="fas fa-sitemap"></i>
            <%-- Add Stories--%>

            <div class="row">
                <div class="form-group col-12 m-auto">
                    <label for="title">Title</label>
                    <input class="form-control" type="text" name="title" id="title" runat="server" />
                </div>
                 <div class="form-group col-12 m-auto">
                    <label for="content">Content</label>
                     <textarea class="form-control" type="text" name="content" id="content" runat="server" ></textarea>
                </div>
                <input id="Submit1" class="btn btn-success" style="margin-top:5px" type="submit" value="AddStory" runat="server" onserverclick="Submit1_ServerClick"/>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>

                      <%-- Add Service--%>
            <div class="row" style="margin-top:10px">
                <div class="form-group col-12 m-auto">
                    <label for="title">Title</label>
                    <input class="form-control" type="text" name="title" id="serviceT" runat="server" />
                </div>
                 <div class="form-group col-12 m-auto">
                    <label for="desc">Description</label>
                     <textarea class="form-control" type="text" name="desc" id="desc" runat="server" ></textarea>
                </div>
                  <div class="form-group col-12 m-auto">
                    <label for="icon">IconName</label>
                    <input class="form-control" type="text" name="icon" id="icon" runat="server" />
                </div>
                <input id="Submit2" class="btn btn-success" style="margin-top:5px" type="submit" value="AddService" runat="server" onserverclick="Submit2_ServerClick"/>
                <asp:GridView ID="GridView2" runat="server"></asp:GridView>
            </div>

            <%-- Add Service End--%>

            <%-- Add Contact Start--%>

            <div class="row" style="margin-top:10px">
                <div class="form-group col-12 m-auto">
                    <label for="title">Name</label>
                    <input class="form-control" type="text" name="title" id="name" runat="server" />
                </div>
                 <div class="form-group col-12 m-auto">
                    <label for="desc">Content</label>
                     <textarea class="form-control" type="text" name="desc" id="con" runat="server" ></textarea>
                </div>
                  <div class="form-group col-12 m-auto">
                    <label for="icon">IconName</label>
                    <input class="form-control" type="text" name="icon" id="icname" runat="server" />
                </div>
                <input id="Submit3" class="btn btn-success" style="margin-top:5px" type="submit" value="AddContact" runat="server" onserverclick="Submit3_ServerClick"/>
                <asp:GridView ID="GridView3" runat="server"></asp:GridView>
            </div>

             <%-- Add Contact End--%>


                <%-- Add Skills Start--%>

            <div class="row" style="margin-top:10px">
                <div class="form-group col-12 m-auto">
                    <label for="title">Name</label>
                    <input class="form-control" type="text" name="title" id="head" runat="server" />
                </div>
                 <div class="form-group col-12 m-auto">
                    <label for="desc">Description</label>
                     <textarea class="form-control" type="text" name="desc" id="descrip" runat="server" ></textarea>
                </div>
                  <div class="form-group col-12 m-auto">
                    <label for="imag">Image</label>
                    <input type="file" accept="image/*" name="imag" id="img" class="form-control" runat="server" />
                </div>
                <input id="Submit4" class="btn btn-success" style="margin-top:5px" type="submit" value="AddSkills" runat="server" onserverclick="Submit4_ServerClick"/>
                <asp:GridView ID="GridView4" runat="server"></asp:GridView>
            </div>

             <%-- Add Skills End--%>
        </div>
    </form>


    
    
    

</body>
</html>
