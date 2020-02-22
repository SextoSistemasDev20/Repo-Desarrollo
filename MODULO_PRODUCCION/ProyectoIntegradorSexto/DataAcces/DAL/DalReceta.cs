using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcces.DTO;

namespace DataAcces.DAL
{
    public class DalReceta
    {
        public static List<DtoReceta> GetRecetas()
        {
            using (var context = new ecuadox8_login3Entities())
            {
                try
                {
                    return (from re in context.Receta
                                   select new DtoReceta
                                   {
                                       RecetaId = re.RecetaId,
                                       RecetaCodigo = re.RecetaCodigo,
                                       RecetaUnidad = re.RecetaUnidad,
                                       RecetaCantidad = re.RecetaCantidad,
                                       MateriaPrimaId = re.MateriaPrimaId,
                                       RecetaFhr = re.RecetaFhr,
                                       RecetaUser = re.RecetaUser,
                                       RecetaEstado = re.RecetaEstado,
                                       ProductoId = re.ProductoId,
                                       RecetaDescripcion = re.RecetaDescripcion
                                   }).ToList();
                }
                catch (DbEntityValidationException dbEx)
                {
                    foreach (var validationErrors in dbEx.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            //Logger.Error(validationError.ErrorMessage + " " + validationError.PropertyName);
                        }
                    }
                    return new List<DtoReceta>();
                }
                catch (Exception e)
                {
                    //Logger.Error(e);
                    return new List<DtoReceta>();
                }
            }
        }
    }
}
