﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="StudAttendanceDetails.aspx.cs" Inherits="StudentManagementSystem.Admin.StudAttendanceDetails" %>

<%@ Register Src="~/StudentAttendanceUC.ascx" TagPrefix="uc" TagName="StudentAttendance" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <uc:StudentAttendance  runat="server" ID="StudentAttendance1" />


</asp:Content>
