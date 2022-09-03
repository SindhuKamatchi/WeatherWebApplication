﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forecast.aspx.cs" Inherits="WeatherForecase.Forecast" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link href="style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Weather Forecast</title>
</head>
<body>

  <div class="row height d-flex justify-content-center align-items-center">
      
    <h1 class="align-items-center">Weather Forecast</h1>
                      <div class="col-md-8">
                        <div class="search">
                          <i class="fa fa-search"></i>
                          <input type="text" id="cityName" class="form-control" placeholder="Enter city name">
                          <button id="btn" class="btn btn-primary">Search</button>
                        </div>
                        
                      </div>
                      
                    </div>


    <div id="setColumns" class="align-items-center">


      <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day0"></h3>
        <h2 id="high0"></h2>
       
        <img id="weather_img_icon0" width="75px"/>
        <h3 id="weather_desc0"></h3>
      </div>
          </div>
          </div>

          <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day1"></h3>
        <h2 id="high1"></h2>
      
        <img id="weather_img_icon1" width="75px"/>
        <h3 id="weather_desc1"></h3>
      </div>
          </div>
          </div>

          <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day2"></h3>
        <h2 id="high2"></h2>
       
        <img id="weather_img_icon2" width="75px"/>
        <h3 id="weather_desc2"></h3>
      </div>
          </div>
          </div>

          <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day3"></h3>
        <h2 id="high3"></h2>
      
        <img id="weather_img_icon3" width="75px"/>
        <h3 id="weather_desc3"></h3>
      </div>
          </div>
          </div>

          <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day4"></h3>
        <h2 id="high4"></h2>
        
        <img id="weather_img_icon4" width="75px"/>
        <h3 id="weather_desc4"></h3>
      </div>
          </div>
          </div>

          <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day5"></h3>
        <h2 id="high5"></h2>
       
        <img id="weather_img_icon5" width="75px"/>
        <h3 id="weather_desc5"></h3>
      </div>
          </div>
          </div>
          <div class="card" style="color: #4B515D; border-radius: 35px;" >
           <div class="displayCondition">
            <div class="card-body p-4">
        <h3 id="day6"></h3>
        <h2 id="high6"></h2>
       
        <img id="weather_img_icon6" width="75px"/>
        <h3 id="weather_desc6"></h3>
      </div>
          </div>
          </div>

</div>
<!-- Loader placeholder -->
  <div class="modal"><!-- Place at bottom of page --></div>
        <script src="Scripts/forecast.js"></script>

</body>
</html>