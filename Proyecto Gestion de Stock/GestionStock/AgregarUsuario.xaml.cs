using Business;
using DataEF;
using Microsoft.Data.SqlClient;
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
    /// <summary>
    /// Lógica de interacción para AgregarUsuario.xaml
    /// </summary>
    public partial class AgregarUsuario : Window
    {
        private readonly UsuarioRepository _usuarioRepository;
        public AgregarUsuario()
        {
            InitializeComponent();
        }

        private void BtnAgregarUsuario_Click(object sender, RoutedEventArgs e)
        {
            using (var context = new StockDbContext())
            {
                var _usuarioRepository = new UsuarioRepository(context);

                try
                {
                    // Agregar usuario
                    string nombre = txtNombre.Text;
                    string password = txtPassword.Password;

                    _usuarioRepository.Registro(nombre, password);
                    MessageBox.Show("Usuario agregado exitosamente.");

                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Error al agregar usuario: " + ex.ToString());
                }
            }
        }

        private void BtnCerrarAgregar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
