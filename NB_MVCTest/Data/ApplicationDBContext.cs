using Microsoft.EntityFrameworkCore;
using NB_MVCTest.Models;

namespace NB_MVCTest.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> option) : base(option)
        {

        }

        public DbSet<User> Users { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<User>().HasData(
                new User
                {
                    Id = 1,
                    FirstName = "Nandini",
                    EmailId = "Nandini@gmail.com",
                    UserName="NB123",
                    BirthDate="30/03/2000"
                },
                new User
                {
                    Id = 2,
                    FirstName = "Shilpa",
                    EmailId = "Shilpa@gmail.com",
                    UserName = "SH123",
                    BirthDate = "12/04/2002"
                },
                new User
                {
                    Id = 3,
                    FirstName = "Rahul",
                    EmailId = "Rahul@gmail.com",
                    UserName = "RR123",
                    BirthDate = "28/06/1999"
                }
                );
        }
    }
}
