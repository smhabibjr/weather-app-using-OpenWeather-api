### Screenshot

![Unbenannt](https://user-images.githubusercontent.com/77357735/213229848-c80762d7-f45b-45d5-8d70-768ce1972ddd.PNG)

![2Unbenannt](https://user-images.githubusercontent.com/77357735/213229904-51bccdf2-74ff-48ef-b7a0-aefec5312704.PNG)


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
api_code = "_your_api_code_here_"
````

For example,if your open weather API code is look like this:  `6grt3434rf4564545f343434`

Then after replacing, API variable value would be look like the below. (Line no. 11)

` api_code = "6grt3434rf4564545f343434" `

Save your project.

### Run

To run this application you don't need to install ruby or ruby on rails on your local machine. Because this project has been configured with a docker file. Just you have to have docker installed on your local machine.

To build a docker image. Open the terminal from your project directory.
````
docker build . -t my-weather-app
````
Build and Run the container.
````
docker run -p 3000:3000 my-weather-app
````
After running the container. Go to the browser and curl http://localhost:3000
