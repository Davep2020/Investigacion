<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Investigacion.Formulario.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Factura</title>


</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px;">
            <table>
                <th>Datos Generales </th>
                <tr>
                    <td>
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre Completo" /></td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" Width="239px" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTelefono" runat="server" Text="Telefono" /></td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" Width="240px" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDireccion" runat="server" Text="lblDireccion" /></td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" Width="240px" /></td>

                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblProducto" runat="server" Text="Producto" /></td>
                    <td>
                        <asp:TextBox ID="txtProducto" runat="server" Width="240px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCosto" runat="server" Text="Costo" /></td>

                    <td>

                        <asp:TextBox ID="txtCosto" runat="server" Width="240px" /></td>
                </tr>

            </table>

        </div>
        <p>
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnGenerar" runat="server" OnClick="btnGenerar_Click" Text="Generar" />
            <asp:Button ID="btnCargar" runat="server" OnClick="btnCargar_Click" Text="Cargar" />
        </p>
        <p>
            &nbsp;
        </p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
