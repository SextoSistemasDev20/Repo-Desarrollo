using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAcces.DTO;

namespace DataAcces.DAL
{
    public class DalMateriaPrima
    {
        public static List<DtoMateriaPrima> GetMateriaPrima()
        {
            using (var context = new ecuadox8_login3Entities())
            {
                try
                {
                    return (from re in context.MateriaPrima
                            select new DtoMateriaPrima
                            {
                                MateriaPrimaId = re.MateriaPrimaId,
                                MateriaPrimaDescripcion = re.MateriaPrimaDescripcion,
                                MateriaPrimaEstado = re.MateriaPrimaEstado,
                                MateriaPrimaFhr = re.MateriaPrimaFhr,
                                MateriaPrimaPrecio = re.MateriaPrimaPrecio,
                                MateriaPrimaUnidad = re.MateriaPrimaUnidad,
                                MateriaPrimaUser = re.MateriaPrimaUser
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
                    return new List<DtoMateriaPrima>();
                }
                catch (Exception e)
                {
                    //Logger.Error(e);
                    return new List<DtoMateriaPrima>();
                }
            }
        }
    }
}
