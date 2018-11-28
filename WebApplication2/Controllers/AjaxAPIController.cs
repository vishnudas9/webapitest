using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class AjaxAPIController : ApiController
    {
        [Route("api/AjaxAPI/AjaxMethod")]
        [HttpPost]
        public LpusWhatsAppModel AjaxMethod(LpusWhatsAppModel person)
        {
            person.BaseData = DateTime.Now.ToString();
            return person;
        }
    }
}