# Image: docker build -t flask:v2 -f Dockerfile .
# Container: docker run -p 5000:5000 flask:v2
# flask binding 0.0.0.0 for host on app.py file 

FROM python:3.7

WORKDIR /app

COPY  requirements.txt .

RUN pip install -r requirements.txt

COPY  . .

CMD [ "python", "app.py" ]

# ----------------with-out-chached------------------------
#   FROM python:3.7

#     WORKDIR /app
    
#     COPY  . .
    
#     RUN pip install -r requirements.txt
    
    
#     CMD [ "python", "app.py" ]
  
