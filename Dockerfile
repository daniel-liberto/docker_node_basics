# Use an existing docker image as a base.
FROM alpine

# Download and install dependencies(this command is from alpine prompt, not docker).
RUN apk add --update redis
RUN apk add --update gcc

# Tell the image what to do
# when it starts as a container.
CMD ["redis-server"]