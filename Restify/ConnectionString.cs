using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restify
{
    public class ConnectionString
    {
        private String connectionSource = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RESTIFY;Integrated Security=True";
       
        public String connect()
        {
            return connectionSource;
        }
    }
}