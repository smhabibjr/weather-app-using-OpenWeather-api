### Configuration

Clone this repository.
````
git clone https://github.com/smhabibjr/weather-app-using-OpenWeather-api.git
````
````
cd weather-app-using-OpenWeather-api
````
Open this project to a code IDE. Like VS Code, Atom etc

Open this file app/controllers/weather_controller.rb and add your own [openWeather API](https://openweathermap.org/api)
````
api = "https://api.openweathermap.org/data/2.5/weather?q=#{city_name}&appid=#{api_code}&units=metric"
````
Save your project.

### Run

To run this application you dont need to install ruby or ruby on rails on your local machine. Becuse this project has been configured with docker file.

To build docker image. Open the terminal from your project directory.
````
docker build weatherApp .
````
Build and Run the container.
```` docker run -p 3000:3000 weatherApp ````
After run the container. Go to the broswer and curl http//:localhost:3000
