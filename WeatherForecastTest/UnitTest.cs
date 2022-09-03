using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using WeatherForecase;

namespace WeatherForecastTest
{
    [TestClass]
    public class UnitTest
    {
       const string Success= "Successfully Logged";
       const  string Failure= "Logging failed";
       const string exception = "Logging failed due to exception";

        [TestMethod]
        public void ValidRequestandResponse()
        {
            string request = "Request";
            string response = "Response";
            string result = WeatherForecase.Forecast.Logging(request, response);
            Assert.AreEqual(string.Compare(result, Success), 0);
        }

        [TestMethod]
        public  void emptyRequestandResponse()
        {
            string request = string.Empty;
            string response = string.Empty;
            string result=WeatherForecase.Forecast.Logging(request, response);
            Assert.AreEqual(string.Compare(result,Failure),0);
        }
    }
}
