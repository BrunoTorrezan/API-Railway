# Usa a imagem do Python 3.11
FROM python:3.11

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 8000 para rodar a API
EXPOSE 8000

# Comando para rodar a API Flask usando Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
