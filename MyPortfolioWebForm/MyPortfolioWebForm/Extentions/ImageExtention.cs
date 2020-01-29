using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace MyPortfolioWebForm.Extentions
{
    public static class ImageExtention
    {
        public static string SaveImage(this HttpPostedFile file, string folder)
        {
            if (file == null)
                throw new NullReferenceException("file cant be null");
      string imageName = Guid.NewGuid().ToString().Replace("-", "").ToLower() + Path.GetExtension(file.FileName);
            file.SaveAs(Path.Combine(folder, imageName));
            return imageName;
        }
    }
}