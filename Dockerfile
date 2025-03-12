# Usando a imagem oficial do Python
FROM python:3.9

# Definir diretório de trabalho no container
WORKDIR /app

# Copiar os arquivos do projeto para o container
COPY . .

# Instalar dependências
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expôr a porta usada pelo Django (padrão 8000)
EXPOSE 8000

# Comando para rodar a aplicação
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
