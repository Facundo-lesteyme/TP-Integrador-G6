namespace Entities
{
    public class Usuario
    {
        public int UsuarioId { get; set; }
        public string Nombre { get; set; }
        public byte[] Hash { get; set; }
        public byte[] Salt { get; set; }
    }
}
