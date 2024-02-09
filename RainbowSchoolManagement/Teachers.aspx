<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="RainbowSchoolManagement.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style2 {
            width: 505px;
            height: 249px;
            margin-right: 0px;
            margin-top: 91px;
        }
        .auto-style3 {
            margin-right: 0px;
            margin-top: 24px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" Height="180px" CssClass="auto-style3" Width="16px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" ReadOnly="True" SortExpression="TeacherID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="SubjectTaught" HeaderText="SubjectTaught" SortExpression="SubjectTaught" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolManagementConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherID] = @original_TeacherID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([SubjectTaught] = @original_SubjectTaught) OR ([SubjectTaught] IS NULL AND @original_SubjectTaught IS NULL))" InsertCommand="INSERT INTO [Teachers] ([TeacherID], [FirstName], [LastName], [DateOfBirth], [Gender], [SubjectTaught]) VALUES (@TeacherID, @FirstName, @LastName, @DateOfBirth, @Gender, @SubjectTaught)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolManagementConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Gender] = @Gender, [SubjectTaught] = @SubjectTaught WHERE [TeacherID] = @original_TeacherID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([SubjectTaught] = @original_SubjectTaught) OR ([SubjectTaught] IS NULL AND @original_SubjectTaught IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TeacherID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_SubjectTaught" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TeacherID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="SubjectTaught" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="SubjectTaught" Type="String" />
                <asp:Parameter Name="original_TeacherID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_SubjectTaught" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
