using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModelEF.EF;
using PagedList;

namespace ModelEF.DAO
{
    public class ProductDAO
    {
        private VoThanhLuanContext db;
        public ProductDAO()
        {
            db = new VoThanhLuanContext();
        }
        //danh sách hiển thị sắp xếp theo Số lượng tăng dần, Đơn giá giảm dần
        public List<Product> ListAll()
        {
            var result = from s in db.Products
                         orderby s.Quantity ascending, s.UnitCost descending
                         select s;
            return result.ToList();
        }

        //tạo danh sách hiển thị
        public List<Product> ListNewProduct(int quantity)
        {
            return db.Products.OrderByDescending(x => x.UnitCost).Take(quantity).ToList();
        }

        //tìm kiếm và phân trang
        public IEnumerable<Product> LisWheretAll(string keysearch, int page, int pagesize)
        {
            IQueryable<Product> model = db.Products;
            if (!string.IsNullOrEmpty(keysearch))
            {
                model = model.Where(x => x.Name.Contains(keysearch));
            }
            return model.OrderBy(x => x.Name).ToPagedList(page, pagesize);
        }
        //thêm sản phẩm
        public bool Insert(Product enity)
        {
            try
            {
                db.Products.Add(enity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        //cập nhật sản phẩm
        public bool Update(Product entityProduct)
        {
            try
            {
                var product = Find(entityProduct.ID);
                product.Name = entityProduct.Name;
                product.UnitCost = entityProduct.UnitCost;
                product.Quantity = entityProduct.Quantity;
                product.CategoryID = entityProduct.CategoryID;
                product.Image = entityProduct.Image;
                product.Status = entityProduct.Status;
                product.Description = entityProduct.Description;
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }

        }
        //xóa sản phẩm
        public bool Delete(int id)
        {
            try
            {
                var dao = db.Products.Find(id);
                db.Products.Remove(dao);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public Product Find(int id)
        {
            return db.Products.Find(id);
        }

    }
}

