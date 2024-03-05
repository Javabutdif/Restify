using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Restify
{
    public class ConnectionString
    {
        public string connect()
        {
            return @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Restify;Integrated Security=True;Connect Timeout=30;Encrypt=False;";
        }
    }
}