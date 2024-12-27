<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="ExpenseDetails.aspx.cs" Inherits="StudentManagementSystem.Admin.ExpenseDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.6/css/dataTables.dataTables.css" />

    <script src="https://cdn.datatables.net/2.1.6/js/dataTables.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=GridView1.ClientID%>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({ "paging": true, "ordering": true, "searching": true });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image: url('../Image/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div class="container p-md-4 p-sm-4">
            <div>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Expense Details</h3>


            <div class="row mb-3 mr-lg-5 ml-lg-5">
                <div class="col-md-12">

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display"
                        AutoGenerateColumns="False">
                        <columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>

                            <asp:BoundField DataField="ClassName" HeaderText="Class">
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>

                            <asp:BoundField DataField="SubjectName" HeaderText="Subject">
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>

                            <asp:BoundField DataField="ChargeAmount" HeaderText="Charge Amount(Per Lecture)">
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>


                        </columns>
                        <headerstyle backcolor="#5558C9" forecolor="White" />

                    </asp:GridView>

                </div>
            </div>

        </div>
    </div>


</asp:Content>
