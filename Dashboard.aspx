<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StudentManagementSystem.Dashboard" %>

<%@ Register Assembly="System.Web.DataVisualization" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Management System - Dashboard</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3>Student Count per Class</h3>
            <asp:Chart ID="StudentChart" runat="server" Width="600px" Height="400px">
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Legend1"></asp:Legend>
                </Legends>
                <Series>
                    <asp:Series Name="ClassCountSeries" ChartType="Bar">
                    </asp:Series>
                </Series>
            </asp:Chart>
        </div>
    </form>
</body>
</html>