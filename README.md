### To create and consume messages from the topic, you can use the Kafka command-line tools. Here are some examples:

1. Run the Kafka and Zookeeper
```bash
make up
```

2. Create a Topic:

```bash
make create-topic
```
3. Produce Messages:
```bash
make produce-message
```

4. Consume Messages:
```bash
make consume-message
```
5. Stop Kafka container

```bash
make down
```