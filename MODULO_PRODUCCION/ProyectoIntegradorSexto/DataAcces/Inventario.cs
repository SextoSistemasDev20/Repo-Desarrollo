//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAcces
{
    using System;
    using System.Collections.Generic;
    
    public partial class Inventario
    {
        public decimal InventarioId { get; set; }
        public string InventarioDescripcion { get; set; }
        public decimal ProductId { get; set; }
        public decimal ProductoUndiad { get; set; }
        public decimal ProduccionId { get; set; }
        public System.DateTime InventarioFhr { get; set; }
        public string InventarioUser { get; set; }
        public string InventarioEstado { get; set; }
    
        public virtual Produccion Produccion { get; set; }
    }
}