using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ProyectoIntegradorSexto.Models
{
    public class ViewModelMateriaPrimaCrear
    {
        [Display(Name = "Descripción")]
        [Required(ErrorMessage = "El campo {0} es obligatorio")]
        [StringLength(100, ErrorMessage = "Este campo solo acepta {1} caracteres")]
        public string Descripcion { get; set; }

        [Display(Name = "Unidad de Medida")]
        [Required(ErrorMessage = "El campo {0} es obligatorio")]
        public string Unidad { get; set; }

        [Display(Name = "Precio")]
        [Range(0.000001, int.MaxValue, ErrorMessage = "Este campo no acepta ceros")]
        public decimal Precio { get; set; }
    }

    public class ViewModelMateriaPrimaBuscar
    {
        [Display(Name = "Descripción")]
        public string Descripcion { get; set; }
        public string Unidad { get; set; }
        public decimal Precio { get; set; }

        public List<ViewModelListaMateriaPrima> ListaMateriaPrima { get; set; }
    }
    public class ViewModelListaMateriaPrima
    {
        public string Descripcion { get; set; }
        public string Unidad { get; set; }
        public decimal Precio { get; set; }
    }
}