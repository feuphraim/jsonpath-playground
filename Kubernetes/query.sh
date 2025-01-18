#Develop a JSON PATH query to extract the kind of object. 
cat input.json | jpath $.kind

#Develop a JSON PATH query to get the name of the POD
cat input.json | jpath $.metadata.name

#Develop a JSON PATH query to get the nodename
cat input.json | jpath $.spec.nodeName

#spec of containers
cat input.json | jpath $.spec.containers

#Q13: Develop a JSON PATH query to get the image name under the containers section.
cat input.json | jpath $.spec.containers.*.image

#Q14: Develop a JSON PATH query to get the phase of the pod under the status section.
cat k8status.json | jpath $.status.phase

#Develop a JSON PATH query to get the reason for the state of the container under the status section.
cat k8status.json | jpath $.status.containerStatuses[0].state.waiting.reason

#Develop a JSON PATH query to get the restart count of the redis-container under the status section
cat k8status.json | jpath $.status.containerStatuses[1].restartCount

#Q17: Develop a JSON PATH query to get all pod names.
cat podslist.json | jpath $.*.metadata.name

#Develop a JSON PATH query to get all users names.
cat userslist.json | jpath $.users.*.name