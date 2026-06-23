using Actividad3ApiDB.Models;
using Microsoft.EntityFrameworkCore;

namespace Actividad3ApiDB.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<Libro> Libros { get; set; }
    }
}