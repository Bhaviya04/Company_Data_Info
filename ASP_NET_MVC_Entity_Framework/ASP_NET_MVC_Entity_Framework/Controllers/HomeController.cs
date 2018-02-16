using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ASP_NET_MVC_Entity_Framework.Models;
using System.Dynamic;

namespace ASP_NET_MVC_Entity_Framework.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            MVC_Entity_FrameworkEntities entities = new MVC_Entity_FrameworkEntities();
            dynamic details = new ExpandoObject();
            details.abc = (from customer in entities.Customers.Take(10) select customer).ToList();
            details.xyz = (from staff in entities.Staffs.Take(10) select staff).ToList();
            return View(details);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}