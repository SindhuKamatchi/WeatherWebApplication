using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeatherForecast
{
    public partial class Forecast : System.Web.UI.Page
    {
        /// <summary>
        /// Class <c>Logging</c> To log the reques and response.
        /// </summary>
        [WebMethod]
        public static string Logging(string request,string response)
        {
            string result = string.Empty;
            try
            {
                if (!string.IsNullOrWhiteSpace(request) && !string.IsNullOrWhiteSpace(response))
                {
                    using (StreamWriter writetext = File.AppendText("Logs.txt"))
                    {
                        writetext.WriteLine("Date: " + System.DateTime.Now + " Request:" + request + " Response:" + response);
                    }
                    result = "Successfully Logged";
                }
                else
                {
                    result = "Logging failed";
                }
            }
           catch(Exception ex)
            {
                result = "Logging failed due to exception";
                Debug.WriteLine(ex);
            }
            return result;
            
        }
    }
}
