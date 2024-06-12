using System.Text;
using Business;
using DataEF;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GestionStock
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private UsuarioRepository _usuarioRepository;
        public MainWindow()
        {
            InitializeComponent();
            _usuarioRepository = new UsuarioRepository(new StockDbContext());
        }

        private void BtnCerrar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void BtnAgregarUsuario_Click(object sender, RoutedEventArgs e)
        {
            var agregarUsuario = new AgregarUsuario();
            agregarUsuario.ShowDialog();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            var usuario = _usuarioRepository.Autenticacion(txtUsuario.Text, txtPassword.Password);

            if (usuario != null)
            {
                MessageBox.Show("Inicio de sesión exitoso!");

                var sesionIniciada = new SesionIniciada();
                sesionIniciada.ShowDialog();
            }
            else
            {
                MessageBox.Show("Usuario o password es incorrecto.");
            }

        }
    }
}