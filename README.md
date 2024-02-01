### To create and consume messages from the topic, you can use the Kafka command-line tools. Here are some examples:

1. Create a Topic:

```bash
docker-compose exec kafka kafka-topics.sh --create --topic topic-1 --partitions 1 --replication-factor 1 --bootstrap-server kafka:9093
```
2. Produce Messages:
```bash
docker-compose exec kafka bash -c "echo 'Hello, Kafka!' | kafka-console-producer.sh --topic topic-1 --bootstrap-server kafka:9093"
```

3. Consume Messages:
```bash
docker-compose exec kafka kafka-console-consumer.sh --topic topic-1 --from-beginning --bootstrap-server kafka:9093
```