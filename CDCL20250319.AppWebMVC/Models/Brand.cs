using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace CDCL20250319.AppWebMVC.Models;

public partial class Brand
{
    public int BrandId { get; set; }
    [Required(ErrorMessage = "El nombre es obligatorio.")]

    public string BrandName { get; set; } = null!;
    [Required(ErrorMessage = "Pais es obligatorio.")]

    public string? Country { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
