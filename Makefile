.PHONY: up down 

up:
	docker-compose up -d 

down:
	docker-compose down

create-topic:
	docker-compose exec kafka kafka-topics.sh --create --topic topic-1 --partitions 1 --replication-factor 1 --bootstrap-server kafka:9093

produce-message:
	docker-compose exec kafka bash -c "echo 'Hello, Kafka!' | kafka-console-producer.sh --topic topic-1 --bootstrap-server kafka:9093"

consume-message:
	docker-compose exec kafka kafka-console-consumer.sh --topic topic-1 --from-beginning --bootstrap-server kafka:9093