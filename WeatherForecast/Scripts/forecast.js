// var weatherurl = "http://api.weatherapi.com/v1/forecast.json?key=apikey&q=cityname&aqi=yes&days=days";

// This gives a "loading" icon when data is loading

$body = $("body");

window.onload = function () {
    $(".card").css("display", "none");

};

$(document).bind({
   ajaxStart: function() { $body.addClass("loading");   },
   ajaxStop:  function() { $body.removeClass("loading");}
});

function unixToDay(timestamp) {
    let date = new Date(timestamp*1000);
    let weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    let weekday = weekdays[date.getDay()];
    return weekday;
}

function locationButtonClick (){
  console.log ("button was clicked", $("#cityName").val());
    getWeatherDetails($(cityName).val());
   
    $(".displayCondition").css("display", "inline-block");
    $(".card").css("display", "inline-block");
    
}

$("#btn").on("click", locationButtonClick);

function Logging(request, response) {
    var Data = JSON.stringify({ request: request, response: response });
    $.ajax({
        type: "POST",
        url: "Forecast.aspx/Logging",
        data: Data,
        contentType: "application/json; charset=utf-8",
        dataType: "json"
    });
}

function getWeatherDetails(cityName) {
    let weatherurl = "https://api.weatherapi.com/v1/forecast.json?key=adbcb3ee983843a7886205705220209&q=" + cityName + "&aqi=yes&days=7";
    var request = cityName;
    $.ajax({

        url: weatherurl,
        success: function (result) {
            dataType: 'json',
            console.log(result);
            let cityName = result.location.name;
            //var response =  JSON.stringify((result.forecast.forecastday));
            var response="";
            displayCityName = cityName;
            $("#weather_place").text(displayCityName);
            for (var i = 0; i < 7; i++) {

                let int = i.toString();

                let dayOfWeek = unixToDay(result.forecast.forecastday[i].date_epoch);
                console.log("day ", result.forecast.forecastday[i].date_epoch);
                $("#day" + int).text(dayOfWeek);

                let iconUrl = result.forecast.forecastday[i].day.condition.icon;
                $("#weather_img_icon" + int).attr("src", iconUrl);

                let cloudiness = result.forecast.forecastday[i].day.condition.text;
                $("#weather_desc" + int).text(cloudiness);

                let displayHighTemp = result.forecast.forecastday[i].day.maxtemp_c;
                $("#high" + int).html(displayHighTemp);

                let displayLowTemp = result.forecast.forecastday[i].day.mintemp_c;
                $("#low" + int).html(displayLowTemp);

                response = response + "  Day " + i + " " + "Cloudiness : " + cloudiness + "HighTemp " + displayHighTemp + + "LowTemp " + displayLowTemp;
            }
            Logging(request, response);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("Error while calling the API");
            $(".card").css("display", "none");
        }
    });
   
}
