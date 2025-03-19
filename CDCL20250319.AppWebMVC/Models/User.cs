using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace CDCL20250319.AppWebMVC.Models;

public partial class User
{
    public int UserId { get; set; }
    [Required(ErrorMessage = "El nombre es obligatorio.")]

    public string Username { get; set; } = null!;
    [Required(ErrorMessage = "El Email es obligatorio.")]
    [EmailAddress(ErrorMessage = "El correo electrónico no tiene un formato válido.")]
    public string Email { get; set; } = null!;
    [Required(ErrorMessage = "La contraseña es obligatoria.")]
    [DataType(DataType.Password)]
    [StringLength(40, MinimumLength = 5, ErrorMessage = "La contraseña debe tener entre 5 y 50 caracteres.")]
    public string PasswordHash { get; set; } = null!;

    public string Role { get; set; } = null!;
}
