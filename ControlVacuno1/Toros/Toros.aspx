<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Toros.aspx.vb" Inherits="ControlVacuno1.Toros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Página De Toros<img src="../Resources/toro.jpg" style="width: 200px; height: 200px" /></h1>
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="lblArete" runat="server" Text="Arete:" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="txtArete" runat="server" BackColor="#FFFFCC" BorderColor="Black" BorderWidth="5px"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" BackColor="#FFFFCC" BorderColor="Black" BorderWidth="5px"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label ID="lbtFecha" runat="server" Text="Fecha:" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="txtFecha" runat="server" BackColor="#FFFFCC" BorderColor="Black" BorderWidth="5px"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:Label ID="lblProceso" runat="server" Text="Proceso:" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="txtProceso" runat="server" BackColor="#FFFFCC" BorderColor="Black" BorderWidth="5px"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Porcentaje:" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="txtPorcentaje" runat="server" BackColor="#FFFFCC" BorderColor="Black" BorderWidth="5px"></asp:TextBox>
        </div>
    </div>
    <div class="row">

        <br />
        <br />
        <br />

    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" BackColor="#FFCC99" BorderColor="#996633" BorderWidth="3px"  />
        </div>
        <div class="col-md-4">
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" BackColor="#FFCC99" BorderColor="#996633" BorderWidth="3px" />
        </div>
        <div class="col-md-4">
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" BackColor="#FFCC99" BorderColor="#996633" BorderWidth="3px" />
            <br />
            <br />
            <br />
        </div>
     </div>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView ID="gvToros" runat="server" AutoGenerateColumns="False" DataKeyNames="arete" DataSourceID="SqlDataSourceToros" Height="101px" Width="462px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                    <asp:BoundField DataField="arete" HeaderText="Arete" ReadOnly="True" SortExpression="arete"></asp:BoundField>
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre"></asp:BoundField>
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha"></asp:BoundField>
                    <asp:BoundField DataField="proceso" HeaderText="Proceso" SortExpression="proceso"></asp:BoundField>
                    <asp:BoundField DataField="porcentaje" HeaderText="Porcentaje" SortExpression="porcentaje"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99"></FooterStyle>

                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="#F7F7DE"></RowStyle>

                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#FBFBF2"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#848384"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#EAEAD3"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#575357"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceToros" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT arete, nombre, fecha, proceso, porcentaje FROM Toro"></asp:SqlDataSource>
           
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
           
        </div>
    </div>
</asp:Content>
