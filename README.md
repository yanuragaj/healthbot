# Healthbot

# Health Bot | Kubernetes, Docker, Ansible, Git & GitHub, Jenkins, DL, Flutter, Apache Webserver, Flask

•	Developed an Android Application using Flutter Framework for those users who want to follow diets and keep themselves fit. It predicts (Deep Learning) different types of diet for weight loss on given data by users. It also provides weekly diet plan, diet for weight gain/loss, fitness, sport/athlete kids, BMR/BMI tool, food energy convertor & 1RM tool. 

•	Chat with users has been sent to nlp server deployed using Flask, where python code prepares dataset and clean data with help of nlp model. 

•	Created a DL/ML ready environment docker image to host DL Model on Apache webserver and NLP Model on Flask and uploaded on DockerHub. Developed Ansible playbook to automate deployment of Kubernetes cluster over AWS and launching of EC-2 Instances. 

•	Automated deployment of DL & nlp server in Kubernetes cluster by creating pipeline in Jenkins that will download yaml code file from GitHub and will run in Kubernetes cluster. So, app is integrated with firebase for registering user, Kubernetes cluster for servers and Jenkins has been integrated with GitHub and Kubernetes cluster.
