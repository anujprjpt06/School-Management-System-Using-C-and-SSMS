﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMst.Master" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="StudentManagementSystem.Teacher.TeacherHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image:url('../Image/bg1.jpg'); width:100%;height:720px; background-repeat:no-repeat; background-size:cover;background-attachment:fixed;">
    <div class="container p-md-4 p-sm-4">
        <div>
            <asp:Label ID="lblmsg" runat="server" ></asp:Label>
        </div>
        <h2 class="text-center">Teacher Home Page</h2>
    </div>
</div>

</asp:Content>
