using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Antlr.Runtime.Misc;
using DataAcces.DAL;
using DataAcces.DTO;
using ProyectoIntegradorSexto.Models;

namespace ProyectoIntegradorSexto.Controllers
{
    public class MateriaPrimaController : Controller
    {
        public ActionResult GetListMateriaPrimaMenu()
        {
            return RedirectToAction("GetListMateriaPrima");
        }

        public ActionResult GetListMateriaPrima(ViewModelMateriaPrimaBuscar getModel)
        {
            getModel.ListaMateriaPrima = (List<ViewModelListaMateriaPrima>)TmpGetListMateriaPrima();

            return View("~/Views/MateriaPrima/GetListMateriaPrima.cshtml",getModel);
        }

        public IEnumerable<ViewModelListaMateriaPrima> TmpGetListMateriaPrima()
        {
            var lista = DalMateriaPrima.GetMateriaPrima();

            var resulTmp = lista.Select(x => new ViewModelListaMateriaPrima
            {
                Descripcion = x.MateriaPrimaDescripcion,
                Precio = x.MateriaPrimaPrecio,
                Unidad = x.MateriaPrimaUnidad
            }).ToList();
            return resulTmp;
        }

        public ActionResult CrearMateriaPrima()
        {
            return View();
        }
    }
}