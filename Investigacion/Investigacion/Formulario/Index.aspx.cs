using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Investigacion.Formulario
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            XDocument document = new XDocument(new XDeclaration("1.0", "utf-8", null));
            XElement nodoraiz = new XElement("Factura");
            document.Add(nodoraiz);
            XElement Facturacion = new XElement("Facturacion");
            Facturacion.Add(new XElement("Nombre", txtNombre.Text+'-'));
            Facturacion.Add(new XElement("Telefono", txtTelefono.Text + '-'));
            Facturacion.Add(new XElement("Direccion", txtDireccion.Text + '-'));
            Facturacion.Add(new XElement("Producto", txtProducto.Text + '-'));
            Facturacion.Add(new XElement("Costo", txtCosto.Text + '-'));
            nodoraiz.Add(Facturacion);
            document.Save(@"C:\Users\PC\source\repos\Investigacion\Investigacion\XML\Factura.xml");
            lblMensaje.Text = "Listo XML Generado";
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            //Creo el objeto XmlDocument y le asigno el nombbre de archivoxml
            XmlDocument archiXML = new XmlDocument();
            ///LE PASO EL URL DEL ARCHIVO
            archiXML.Load(@"C:\Users\PC\source\repos\Investigacion\Investigacion\XML\Factura.xml");
            XmlNodeList nodoraiz = archiXML.SelectNodes("/Factura");
            ///RECORRO EL NODO
            foreach (XmlNode FAC in nodoraiz)
            {
                ///SE CREA UN ARREGLO QUE ALMACENE LOS DATOS
                string[] FacturaS = new string[] {
                        FAC.InnerText
                    };

                string respuesta = " ";

                for (int i = 0; i < FacturaS.Length; i++)
                {
                    respuesta += FacturaS[i];
                }
                Label1.Text += respuesta;
            }
        }
    }
}