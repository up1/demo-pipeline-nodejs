# Demo with Docker 2026

## 1. Build image
```
$docker image build -t app:1.0 .
```

## 2. Push image
```
$docker login
$docker image push app:1.0
```


## 3. Create container
```
$docker container run -d -p 3000:3000 app:1.0
```

Check result
* http://localhost:3000/
