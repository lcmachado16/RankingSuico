# RankingSuico



# Pré Requisitos 

- Docker 
- Dotnet 8 
- Git


## Rodar o projeto 

## Docker

### Build da imagem
```bash
docker build -t ranking-suico .

# Rodar o container
docker run -p 8080:8080 ranking-suico

# Listar containers
docker ps

# Parar um container
docker stop <container_id>
```

Para acessar o projeto 
- http://127.0.0.1:8080/
- http://localhost:8080/
- http://[::1]:8080/
