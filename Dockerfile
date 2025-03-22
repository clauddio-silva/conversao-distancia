FROM python:3.10.12 
WORKDIR /app
COPY requirements.txt .
# Comando de construção: RUN executa uma instrução dentro da imagem 
RUN python -m pip install -r requirements.txt
COPY . .
# Comando de inicialização: Instrução de inicialização, executo na hora da criação do container  
CMD [ "gunicorn", "bind", "0.0.0.0:5000", "app:app" ]