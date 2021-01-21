<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Historypage.aspx.cs" Inherits="Historypage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TransactionHistorypage</title>
    <style> 
      .button {
  background-color: white; 
  color: black; 
  border: 2px solid #f56666;
}

.button:hover {
  background-color: #f56666;
  color: black;
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  background-color:#f56666;
 width:490px;
  padding: 10px;
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
            text-align: left;
            width: 1492px;
        }
        .auto-style2 {
            text-align: left;
            width: 1491px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color:black; text-shadow: 1px 1px 2px black, 0 0 25px coral, 0 0 5px lightcoral;" class="auto-style1"> Basic Banking System </h1>
               <div class="auto-style2" >
            
                   <asp:Button ID="Button1" runat="server" Text="Home" Font-Bold="True" Font-Size="Larger" Height="50px" CssClass="button" OnClick="Button1_Click" />
             &nbsp;&nbsp;&nbsp;      
        </div>
            </div>
          <div style=" background-repeat:no-repeat; background-attachment:scroll; width: 1500px; height:1500px; background-color:#e4a596">
    
    
            
            
            <asp:GridView ID="GridView1" runat="server" CssClass="grid-container" RowStyle-CssClass="grid-item" HorizontalAlign="Center"  HeaderStyle-CssClass="item1" >
                
            </asp:GridView>
    
        </div>
    </form>
</body>
</html>
