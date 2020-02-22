using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.DTO
{
    public class DtoReceta
    {
        public decimal RecetaId { get; set; }
        public string RecetaCodigo { get; set; }
        public string RecetaUnidad { get; set; }
        public decimal RecetaCantidad { get; set; }
        public decimal MateriaPrimaId { get; set; }
        public System.DateTime RecetaFhr { get; set; }
        public string RecetaUser { get; set; }
        public string RecetaEstado { get; set; }
        public decimal ProductoId { get; set; }
        public string RecetaDescripcion { get; set; }
    }
}
