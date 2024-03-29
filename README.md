### Screenshot

![image](https://user-images.githubusercontent.com/77357735/215267239-1f98e59a-3669-4acf-bcb5-8890bb1bcb29.png)

![image](https://user-images.githubusercontent.com/77357735/215267334-35e61204-4737-4f1c-8092-8ba7f775c436.png)

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

Then after replacing, API variable value would be look like below. (Line no. 11)

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

#### Connect with me

[![Facebook](https://img.shields.io/badge/Facebook-%231877F2.svg?logo=Facebook&logoColor=white)](https://facebook.com/smhabibjr) 
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%230077B5.svg?logo=linkedin&logoColor=white)](https://linkedin.com/in/smhabibjr) 
[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?logo=YouTube&logoColor=white)](https://youtube.com/c/HabibJr)
[![Medium](https://img.shields.io/badge/Medium-12100E?logo=medium&logoColor=white)](https://medium.com/@smhabibjr)
