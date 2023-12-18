# IMD Load Test
This repository addresses a proof of concept about load test in a docker environment for educational purposes at IMD

## Tech stack
- Nginx;
- .NET 8;
- MySQL;
- Docker;
- K6;
- Grafana;
- InfluxDB

## How to get up and running
```
./run.sh up
```

## How to clean up
```
./run.sh down
```

# Results
- Execution of load test in k6
- Automatic real time report of load test in grafana via influxdb
- Metrics collected such as median response time (29.8ms)

# Appends
<img src="./docs/screenshot-grafana.png"/>