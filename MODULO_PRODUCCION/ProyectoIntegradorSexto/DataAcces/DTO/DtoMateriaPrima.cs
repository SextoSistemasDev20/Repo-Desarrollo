using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.DTO
{
    public class DtoMateriaPrima
    {
        public decimal MateriaPrimaId { get; set; }
        public string MateriaPrimaDescripcion { get; set; }
        public string MateriaPrimaUnidad { get; set; }
        public decimal MateriaPrimaPrecio { get; set; }
        public System.DateTime MateriaPrimaFhr { get; set; }
        public string MateriaPrimaUser { get; set; }
        public string MateriaPrimaEstado { get; set; }
    }
}
