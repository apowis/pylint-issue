# pylint being annoying

This repo is a simplified structure of an issue I'm having with pylint.

The Dockerfile contains the following code:
```docker
FROM python:3.9.5

WORKDIR /home/
ADD ./lib/ ./lib/
RUN pip install -q --upgrade pip && \
    pip install -q pylint

# RUN rm lib/src/__init__.py
RUN pylint -E lib/src/lib/
```

If you build this, it fails. If you uncomment the penultimate line, it works! Why is this?

My current solution in my GitHub Actions, is to simply delete the init file before running pylint, yuck!

Another thing I have tried to do, is add an `init-hook` to my `.pylintrc` file to append `lib/src/` to my path, along with other variations. This also didn't work.

Please help!
