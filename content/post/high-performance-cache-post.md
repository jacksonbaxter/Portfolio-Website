---
title: "High Performance Cache in Rust Project"
date: 2025-01-01
draft: false
pin: true
categories: ["Projects"]
tags: ["Rust", "Database"]
---

For my final project for my database modeling class at BYU I decided to combine my desire to learn more Rust and fulfill the following requirements at the same time:

## Features
- Caching layer non-persistent (e.g. Redis) and persistent layer (e.g. Postgres SQL). (See https://redis.com/wp-content/uploads/2023/04/redis-enterprise-for-caching.pdf)
    - In-memory cache (fastest, but volatile)
    - Redis cache (medium speed, distributed)
    - PostgreSQL database (persistent storage)
- Support 5000 read requests per second with subsecond average latency on each request.
- Support 5000 write requests per second with subsecond average latency on each request.
- High Concurrency

It was a great challenge but also one of the most fun projects I had all of last semester due to the amount of learning I was able to do all with one project.

Below is the post I put into the class Discord to explain my project that has the relevant information. Thanks for reading!

# High Performance Caching Final Project by Jackson Baxter

My project is designed to enable a highly performant, layered, and scalable caching system. I built it in Rust so that I can safely use a very minimal amount of resources or large amount at scale. This is acheived through also using in-memory caching first, then Redis non-persistent storage, then PostgreSQL. Lastly, it is very easy to deploy thanks to Docker.

## Github Link
https://github.com/jacksonbaxter/high-performace-cache

## Key learnings
- Low-level and efficient languages like Rust enable high scalability and low resource use even for big databases.
- Docker made tying multiple systems like Redis and PostgreSQL much easier.
- Using the already useful connective frameworks for Redis within Rust made layering and concurrency much easier and much more stable.

## Failover Strategy
Everything is save in persistent storage through PostgreSQL through consistent health checks.

## Characteristics
- Caching layer non-persistent (e.g. Redis) and persistent layer (e.g. Postgres SQL). (See https://redis.com/wp-content/uploads/2023/04/redis-enterprise-for-caching.pdf)
- In-memory cache (fastest, but volatile)
- Redis cache (medium speed, distributed)
- PostgreSQL database (persistent storage)
- Support 5000 read requests per second with subsecond average latency on each request.
- Support 5000 write requests per second with subsecond average latency on each request.
- High Concurrency

## Video
https://youtu.be/PhfE7N2PJmk

Feel free to provide any feedback or questions!
