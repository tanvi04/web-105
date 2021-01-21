<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
     <style  > 
      .button {
  background-color: white; 
  color: black; 
  border: 2px solid #f56666;
}

.button:hover {
  background-color: #f56666;
  color: black;
}
.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #0b8d2e;
}

.button2:hover {
  background-color:green;
  color: white;
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  background-color: #f56666;
 width:700px;
  padding: 10px;
  align-self:center;
}
.grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.8);
  padding: 20px;
  font-size: 30px;
  text-align: center;
}
.item1 { grid-area: header;
         font-size:30px;
         padding: 20px;
  text-align: center;
  background-color:#f7974c;
}
        .auto-style1 {
             width: 195px;
         }
        .auto-style2 {
            width: 241px;
        }
         .auto-style3 {
             width: 241px;
             height: 29px;
         }
         .auto-style4 {
             width: 195px;
             height: 29px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">

         <div>
           <h1 style="width: 1147px; color:black; text-shadow: 1px 1px 2px black, 0 0 25px coral, 0 0 5px lightcoral;"> Basic Banking System </h1>
               <div >
            <div style="background-color:lightcoral;text-align:center;width:1500px;">

            </div>
                     
                   </h1>
                  
                   <div style="background-color:lightcoral;text-align:left;width:1500px;">
            <asp:Button ID="Button1" runat="server" Text="Home" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button1_Click" />
             &nbsp;&nbsp;&nbsp;      
                   <asp:Button ID="Button2" runat="server" Text="View Users" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button2_Click" />
                   &nbsp;&nbsp;&nbsp;

             <asp:Button ID="Button3" runat="server" Text="Transaction history" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button3_Click" />
                  </div>
               </div>
</div>
        <div style=" background-repeat:no-repeat; background-attachment:scroll;background-color:lightcoral; width: 1500px; height:1500px;text-align:center; background-color:#e4a596";>
           
    
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>

            
            <asp:GridView ID="GridView1" runat="server" CssClass="grid-container" RowStyle-CssClass="grid-item"  HeaderStyle-CssClass="item1"   HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Button" ControlStyle-CssClass="button" ShowHeader="True" Text="View" />
                </Columns>
                <HeaderStyle CssClass="item1" />
                <RowStyle CssClass="grid-item" />
                
            </asp:GridView>
    <div style="align-self:center;" >
           <table style="margin:auto;">
               <tr>
                   <td class="auto-style2"><asp:Label ID="Label8" runat="server" Text="Transfer money from" Font-Size="Larger"></asp:Label></td>
            <td class="auto-style1">
            
            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="35px">
            </asp:DropDownList>
                </td>
                   </tr>
           <tr>
           <td class="auto-style3"> <asp:Label ID="Label5" runat="server" Text="Tranfer money to" Font-Size="Larger"></asp:Label></td>
               <td class="auto-style4">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" Height="35px"></asp:DropDownList>
    </td>
               </tr>
               <tr>
           <td class="auto-style2"> <asp:Label ID="Label6" runat="server" Text="Amount " Font-Size="Large"></asp:Label></td>
           <td class="auto-style1"> <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="160px"></asp:TextBox></td>
                    </tr>
               <tr>
                   <td class="auto-style2">

                   </td>
                   <td class="auto-style1">
            <asp:Button ID="Button4" runat="server" Text="Transfer" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button2" OnClick="Button4_Click" />
     
                       </td>

               </tr>
               </table>
        </div>
        
       </div>
    </form>
</body>
</html>
