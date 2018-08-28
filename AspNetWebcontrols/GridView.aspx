<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="AspNetWebcontrols.GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family:Verdana">
      <div style="margin-left:150px;width:700px;border: 4mm ridge #f0ad4e;float:left ">
    <h2 style="color:Blue;text-align:center">Dotnet  Demo  </h2>
       <div style="border: 1px solid;"></div>
    <div  style="padding-left:50px">     
      
       
           <h2>Login Control</h2>
       <asp:Login ID = "Login1" runat = "server" OnAuthenticate= "ValidateUser" 
             BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" 
             BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" 
             Width="467px" Height="167px">
           <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
           <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
               BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
           <TextBoxStyle Font-Size="0.8em" />
           <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
               ForeColor="White" />
         </asp:Login>
          <h2>GridView Control</h2>
       <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" PageSize="2" 
            onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
             onrowediting="GridView1_RowEditing" CellPadding="3" EnableTheming="False" 
             ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#CCCCCC" 
             BorderStyle="None" BorderWidth="1px" Width="591px" 
         >
        <Columns>
        <asp:TemplateField>
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument="1">Edit</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" CommandArgument="2">Delete</asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="EmployeeId" HeaderText="Employee Id" />
        <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" />
        <asp:BoundField DataField="DepartmentName" HeaderText="Department Name" />
        
        </Columns>

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

        </asp:GridView>


        <br />
      
       
         <br />

          <h2>Validation Control</h2>
        <br />
        <h3>Required Field Validator</h3>

          <asp:TextBox ID="txtname" runat="server"  TextMode="SingleLine" ValidationGroup="btn" ></asp:TextBox> 
         <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="btn"  />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="<br/>Enter Name" ControlToValidate="txtname" Display="Dynamic" style="color:Red" ValidationGroup="btn"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="Regv1" runat="server" ErrorMessage="<br/>Enter Only alphabets" ControlToValidate="txtname" Display="Dynamic" style="color:Red" ValidationExpression="^[a-zA-Z]+$" ></asp:RegularExpressionValidator>
         <br />
           <h3>Compare Validator</h3>

            <asp:TextBox ID="TextBox1" runat="server"  TextMode="SingleLine" ValidationGroup="btn" ></asp:TextBox> = <asp:TextBox ID="TextBox2" runat="server"  TextMode="SingleLine" ValidationGroup="btn"  ></asp:TextBox> 
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both values should be same" ControlToCompare ="TextBox1" ControlToValidate="TextBox2" style="color:Red"></asp:CompareValidator>
         <br />

        
        <br />
           <br />

        
        <br />
           <br />

        
        <br />
        <h2>DataList Control</h3>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" 
               BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
               GridLines="Horizontal" RepeatColumns="1" Height="372px" 
               style="margin-right: 174px" Width="450px">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemTemplate>  
            <table class="table">  
                <tr>  
                    <th colspan="2">  
                        <b>  
                             <%# Eval("EmployeeName")%>  </b>  
                    </th>  
                </tr>  
                
                <tr>  
                    <td>  
                        Employee Name:  
                    </td>  
                    <td>  
                        <%# Eval("EmployeeName")%>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        Department:  
                    </td>  
                    <td>  
                        <%# Eval("DepartmentName")%>  
                    </td>  
                </tr>  
            </table>  
        </ItemTemplate>  
            </asp:DataList>


            <br />
            <br />
            <br />
            <br />
            <br />
            <h2>Repeater Control</h2>
            <asp:Repeater ID="RepterDetails" runat="server">

    <HeaderTemplate>

    <table style="border:1px solid #0000FF; width:500px" cellpadding="0">

    <tr style=" font-size: large; font-weight: bold;height:35px">

    <td colspan="2">

    <b>Employee Details</b>

    </td>

    </tr>
    <tr style="height:35px">
    <th>
    Employee Id
    </th>
    <th>
    Employee Name
    </th>
    <th>
    Deprtment Name
    </th>
    </tr>

    </HeaderTemplate>

    <ItemTemplate>

    <tr style="background-color:#EBEFF0;height:35px">

   

    <td >

    

    <asp:Label ID="lblSubject" runat="server" Text='<%#Eval("EmployeeId") %>' Font-Bold="true"/>

    </td>
    <td >

    

    <asp:Label ID="Label1" runat="server" Text='<%#Eval("EmployeeName") %>' Font-Bold="true"/>

    </td>
    <td >

    

    <asp:Label ID="Label2" runat="server" Text='<%#Eval("DepartmentName") %>' Font-Bold="true"/>

    </td>

    </tr>

 

   

    </ItemTemplate>

    <FooterTemplate>

    </table>

    </FooterTemplate>

    </asp:Repeater>
     <br />
            <br />
            <br />
            <br />
             <br />
            <br />
            <br />
            <br />
    </div>
    </div>
   <%--  <div style="width:400px;border: 4mm ridge #f0ad4e;float:right;margin-top:200px;height:400px">
    <h4 style="color:Blue;text-align:left">Output</h4>
       <div style="border: 1px solid;"></div>
       <br />
       <br />
       <asp:Label Id="lbloutput" runat="server">
       </asp:Label>
       
       
       </div>--%>
    </form>
</body>
</html>
