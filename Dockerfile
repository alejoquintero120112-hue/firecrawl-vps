FROM node:20

WORKDIR /app

# Instalar herramientas del sistema + Rust
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    python3 \
    pkg-config \
    libssl-dev

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Copiar solo la API
COPY apps/api /app

# Instalar pnpm y dependencias
RUN npm install -g pnpm
RUN pnpm install

EXPOSE 3002

CMD ["pnpm", "start"]