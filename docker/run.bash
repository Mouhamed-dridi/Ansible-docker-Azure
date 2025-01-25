docker build -t custom-apache .




docker run -d --name apache-container -p 80:80 custom-apache
