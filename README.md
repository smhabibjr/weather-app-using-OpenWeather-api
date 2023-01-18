### Configuration

Clone this repository.
````
git clone https://github.com/smhabibjr/weather-app-using-OpenWeather-api.git
````
````
cd weather-app-using-OpenWeather-api
````
Open this project to a code IDE. Like VS Code, Atom, etc

Open this file app/controllers/weather_controller.rb and replace your own [openWeather API](https://openweathermap.org/api) code.
````
api = "https://api.openweathermap.org/data/2.5/weather?q=#{city_name}&appid=#{api_code}&units=metric"
````
Save your project.

### Run

To run this application you don't need to install ruby or ruby on rails on your local machine. Because this project has been configured with a docker file.

To build a docker image. Open the terminal from your project directory.
````
docker build weatherApp .
````
Build and Run the container.
````
docker run -p 3000:3000 weatherApp 
````
After running the container. Go to the browser and curl http://localhost:3000
