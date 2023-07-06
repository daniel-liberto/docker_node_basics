# on Docker, running tasks order is very important
# 1) so first we will get image from DockerHub
# 2) creates a project folder inside docker
# 3) copy only package.json first for tell docker what dependencies need
# 4) run npm install to instal those dependencies
# 5) copy remain locals files to workdir folder
# 6) expose project port which you declarate in index.js
# 7) CMD to run project
# 8) run on vscode terminal the docker build command


# Use an existing docker image from DockerHub as a base.
FROM node

# creates a folder where our project will stay
WORKDIR /usr/src/app

# COPY local_file destination_folder_on_docker
COPY package.json /usr/src/app

# Download and install dependencies(this command is from inside image prompt, not docker).
RUN npm install

# will copy every local file to inside docker workdir folder
COPY . /usr/src/app

# tell what port docker will use(in this case i use 3000 because this is the port on index.js file)
EXPOSE 3000

# Tell the image what to do when it starts as a container.
CMD ["node", "index.js"]

# now run on vscode terminal:
# docker build -t image_name .