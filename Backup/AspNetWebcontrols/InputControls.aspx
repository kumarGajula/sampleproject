<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputControls.aspx.cs" Inherits="AspNetWebcontrols.InputControls" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
     
     <br />
     <h3>Label Control</h3>
      <asp:Label ID="lblname" runat="server"  Text="Test" Visible="True">
      </asp:Label>
      <br />
        <br />
        <h3>Textbox Control</h3>
        <asp:TextBox ID="txtname" runat="server"  TextMode="SingleLine" ></asp:TextBox>

         <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"  TextMode="MultiLine" ></asp:TextBox>
         <br />
         <h3>Button Control</h3>
           <br />

        <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
            onclick="btnsubmit_Click" />
        <br />
        <h3>LinkButton Control</h3>
        <br />
        <asp:LinkButton ID="lnkclick" runat="server" onclick="lnkclick_Click">Link Click</asp:LinkButton>
            <br />
            <h3>HyperLink Control</h3>
              <br />
        <asp:HyperLink ID="hpklnk" runat="server" NavigateUrl="https://google.co.in">Google</asp:HyperLink>
               <br />
               <h3>CheckBox Control</h3>
              <br />
        <asp:CheckBox ID="chk" runat="server" Text="Intermediate" AutoPostBack="true"  Checked="true"
            oncheckedchanged="chk_CheckedChanged" />
            <br />
            <h3>CheckBox List Control</h3>
            <br />
        <asp:CheckBoxList ID="chklstqualifications1" runat="server" RepeatDirection="Horizontal" >
        <asp:ListItem Value="1" Text="Intermediate" ></asp:ListItem>
         <asp:ListItem Value="2" Text="Graduation"></asp:ListItem>
         <asp:ListItem Value="3" Text="Post Graduation" Selected="True"></asp:ListItem>
        </asp:CheckBoxList>
         <br />
            <br />
        <asp:CheckBoxList ID="chklstqualifications2" runat="server" RepeatDirection="Vertical" RepeatColumns="2" >
        <asp:ListItem Value="1" Text="Intermediate"></asp:ListItem>
         <asp:ListItem Value="2" Text="Graduation" Selected="True"></asp:ListItem>
         <asp:ListItem Value="3" Text="Post Graduation"></asp:ListItem>
        </asp:CheckBoxList>

          <br />
          <h3>RadioButton Control</h3>
            <br />
        <asp:RadioButton ID="rbtnmale" runat="server" GroupName="Gender" Checked="true" />Male
        <asp:RadioButton ID="rbtnfemale" runat="server" GroupName="Gender"  />Female
        <br />
        <h3>RadioButton List Control</h3>
        <br />
        <asp:RadioButtonList ID="rbtn" runat="server">
        <asp:ListItem Text="Male" Value="1" Selected="True"></asp:ListItem>
        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <h3>DropDown List Control</h3>
        <br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="24px" 
            Width="202px" >
        <asp:ListItem Text ="Mango" Value="1"></asp:ListItem>
        <asp:ListItem Text ="Apple" Value="2" Selected="True"></asp:ListItem>
        <asp:ListItem Text ="Water melon" Value="3"></asp:ListItem>
         
         <asp:ListItem Text ="Banana" Value="4"></asp:ListItem>
         <asp:ListItem Text ="Pineapple" Value="3"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:ListBox ID="lstbox" runat="server" SelectionMode="Multiple" Width="211px" 
            AutoPostBack="True" onselectedindexchanged="lstbox_SelectedIndexChanged">
        <asp:ListItem Text="Apple" Value="1"></asp:ListItem>
        <asp:ListItem Text="Banana" Value="2"></asp:ListItem>
        <asp:ListItem Text="Mango" Value="3"></asp:ListItem>
        <asp:ListItem Text="Pineapple" Value="4"></asp:ListItem>
        </asp:ListBox>
        <br />
        <h3>FileUpload Control</h3>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />

        <br />
        <h3>Calendar Control</h3>
        <br />

        <asp:TextBox ID="txtDate" runat="server" ReadOnly="true">
<asp:ImageButton ID="imgPopup" ImageUrl="images/calendar.png" ImageAlign="Bottom"
runat="server" />
<cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtDate"
Format="dd/MM/yyyy">
    </div>
    </div>
       <div style="width:400px;border: 4mm ridge #f0ad4e;float:right;margin-top:200px;height:400px">
    <h4 style="color:Blue;text-align:left">Output</h4>
       <div style="border: 1px solid;"></div>
       <br />
       <br />
       <asp:Label Id="lbloutput" runat="server">
       </asp:Label>
       
       
       </div>
    </form>
</body>
</html>
