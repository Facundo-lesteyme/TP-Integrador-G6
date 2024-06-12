using DataEF;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace GestionStock
{
    public partial class SesionIniciada : Window
    {
        private StockDbContext _context;

        public SesionIniciada()
        {
            InitializeComponent();
            _context = new StockDbContext();
            CargarCategorias();
            CargarProductos();
        }

        private void CargarCategorias()
        {
            cbCategorias.ItemsSource = _context.Categorias.ToList();
        }

        private void CargarProductos()
        {
            lstProductos.ItemsSource = _context.Productos.ToList();
        }

        private void btnAgregarProducto_Click(object sender, RoutedEventArgs e)
        {
            var producto = new Producto
            {
                Nombre = txtNombreProducto.Text,
                CategoriaId = (int)cbCategorias.SelectedValue,
                Habilitado = chkHabilitadoProducto.IsChecked ?? false
            };

            _context.Productos.Add(producto);
            _context.SaveChanges();
            CargarProductos();
        }

        private void btnEditarProducto_Click(object sender, RoutedEventArgs e)
        {
            if (lstProductos.SelectedItem is Producto producto)
            {
                producto.Nombre = txtNombreProducto.Text;
                producto.CategoriaId = (int)cbCategorias.SelectedValue;
                producto.Habilitado = chkHabilitadoProducto.IsChecked ?? false;

                _context.SaveChanges();
                CargarProductos();
            }
        }

        private void btnEliminarProducto_Click(object sender, RoutedEventArgs e)
        {
            if (lstProductos.SelectedItem is Producto producto)
            {
                _context.Productos.Remove(producto);
                _context.SaveChanges();
                CargarProductos();
            }
        }

        private void lstProductos_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            if (lstProductos.SelectedItem is Producto producto)
            {
                txtNombreProducto.Text = producto.Nombre;
                cbCategorias.SelectedValue = producto.CategoriaId;
                chkHabilitadoProducto.IsChecked = producto.Habilitado;
            }
        }

        private void BtnCerrarWinSesion_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}