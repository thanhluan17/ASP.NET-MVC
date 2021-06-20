using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ModelEF.EF
{
    public partial class VoThanhLuanContext : DbContext
    {
        public VoThanhLuanContext()
            : base("name=VoThanhLuanContext")
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<UserAccount> UserAccounts { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>()
                .Property(e => e.CategoryID)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .HasMany(e => e.Products)
                .WithRequired(e => e.Category)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.UnitCost)
                .HasPrecision(15, 0);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Status)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.CategoryID)
                .IsUnicode(false);

            modelBuilder.Entity<UserAccount>()
                .Property(e => e.UserName)
                .IsUnicode(false);

            modelBuilder.Entity<UserAccount>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<UserAccount>()
                .Property(e => e.Status)
                .IsUnicode(false);
        }
    }
}
