using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace CDCL20250319.AppWebMVC.Models;

public partial class Product
{
    public int ProductId { get; set; }
    [Display(Name = "Nombre del producto")]

    public string ProductName { get; set; } = null!;
    [Display(Name = "Descripción")]

    public string? Description { get; set; }
    [Display(Name = "Precio")]

    public decimal Price { get; set; }

    public int? CategoryId { get; set; }

    public int? BrandId { get; set; }

    public virtual Brand? Brand { get; set; }

    public virtual Category? Category { get; set; }
}
