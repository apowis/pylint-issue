FROM python:3.9.5

WORKDIR /home/
ADD ./lib/ ./lib/
RUN pip install -q --upgrade pip && \
    pip install -q pylint

# RUN rm lib/src/__init__.py
RUN pylint -E lib/src/lib/