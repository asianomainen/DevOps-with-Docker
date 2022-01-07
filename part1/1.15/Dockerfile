FROM ubuntu

RUN apt-get update && apt-get install -y git python3 python3-pip 
RUN pip install poetry
RUN git clone https://github.com/asianomainen/reading-tip-library

WORKDIR /reading-tip-library

RUN poetry install --no-dev

CMD ["poetry","run","invoke","start"]
