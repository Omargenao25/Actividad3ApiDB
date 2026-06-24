using System.ComponentModel.DataAnnotations.Schema;

namespace Actividad3ApiDB.Models
{
    public class Libro
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public int AnioPublicacion { get; set; }
        public string Genero { get; set; }
        public int NumeroPaginas { get; set; }

        [Column(TypeName = "decimal(18,2)")]
        public decimal Precio { get; set; }
        public bool Disponible { get; set; }
    }
}
