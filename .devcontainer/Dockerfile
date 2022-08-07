FROM python:3
RUN apt update -y && \ 
    apt install -y zsh
RUN pip install --upgrade pip && \
    pip install docker
# Install oh myzsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ENV SHELL /bin/zsh
RUN echo "local home: $LOCAL_HOME"
ADD .zshrc /root/.zshrc  