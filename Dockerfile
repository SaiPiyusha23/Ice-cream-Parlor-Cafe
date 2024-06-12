FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV NAME icecream-parlor-cafe

CMD ["python", "ice_cream_parlor.py"]

# Connect this application using Docker file . These are the following steps followed
1.Install Docker in the desktop based on the operating system.
2.Create the folder and insert all the files related to the application in the docker.
3.Create the req.txt file but this doesn't contain any data as the data is already present in sql file.
4."docker build -t ice-cream-parlor ." Enter this command in the bash to build the docker image with 
and the dot(.) indicating that the docker file is present in this particular repository.
5."docker run -it --rm --name ice-cream-parlor " enter this command to run the dictionary an git needs to be interactive. Here also we
  gave the same image name to the dictionary and then it will be having the docker image from where we have created the dictionary.
These steps are followed to implement the docker
    
