# IMD Load Test
This repository addresses a proof of concept about load test in a docker environment for educational purposes at IMD.

## Materials
- <a href="./docs/test-plan.pdf">Test Plan</a>;
- <a href="./docs/test-scenario.pdf">Test scenario</a>.


## How to get service up and running
```
./run.sh up
```

## How to start load test
```
./run.sh loadtest
```

## How to clean up
```
./run.sh down
```

# Results
- Execution of load test in k6;
- Automatic real time report of load test in grafana via influxdb;
- Metrics collected such as median response time.

<img src="./docs/screenshot-grafana-dashboard.png"/>
