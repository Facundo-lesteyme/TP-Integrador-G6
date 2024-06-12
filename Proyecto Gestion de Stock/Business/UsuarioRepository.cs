using DataEF;
using Entities;

namespace Business
{
    public class UsuarioRepository
    {
        private readonly StockDbContext _context;

        public UsuarioRepository(StockDbContext context)
        {
            _context = context;
        }

        public void Registro(string nombre, string password)
        {
            byte[] passwordHash, passwordSalt;
            Seguridad.CrearPasswdHash(password, out passwordHash, out passwordSalt);

            var usuario = new Usuario
            {
                Nombre = nombre,
                Hash = passwordHash,
                Salt = passwordSalt
            };

            _context.Usuario.Add(usuario);
            _context.SaveChanges();
        }

        public Usuario Autenticacion(string nombre, string password)
        {
            var usuario = _context.Usuario.SingleOrDefault(x => x.Nombre == nombre);

            if (usuario == null)
                return null;

            if (!Seguridad.VerificarPasswdHash(password, usuario.Hash, usuario.Salt))
                return null;

            return usuario;
        }
    }

}
