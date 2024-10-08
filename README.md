# Monitoring Stack with Grafana, Alloy, Loki, Tempo, and Prometheus
Monitoring stack setup with Grafana Loki Prometheus Alloy and Tempo

# Overview
This repository contains a complete monitoring stack to monitor logs, traces, and system metrics. The stack includes:

# Grafana: For visualizing metrics and logs.
Alloy: Handles Kubernetes pod discovery and log relabeling.
Loki: A log aggregation system that integrates with Grafana.
Tempo: Distributed tracing backend to collect and analyze traces.
Prometheus: Metrics collection and alerting system.
The stack integrates with a GoLang application that produces logs with embedded traces, allowing full end-to-end observability of logs, traces, and metrics.

# Stack Components
Grafana

Visualization of metrics, logs, and traces.
Dashboards for monitoring system health and application performance.

# Alloy

Kubernetes pod discovery for dynamic relabeling of logs.
Integration with Loki and Tempo for seamless observability.

# Loki

Aggregates logs from various sources.
Works efficiently with Grafana for log-based monitoring.

# Tempo

Distributed tracing platform.
Integrated with Grafana to view traces along with logs.

# Prometheus

Collects time-series metrics from applications and infrastructure.
Configurable alerting system based on metric thresholds.

# Features
Logs with Traces: The GoLang app in this repository is instrumented to include trace information in the logs, allowing correlation of logs with traces.
Monitoring and Alerting: System metrics are monitored via Prometheus, and dashboards and alerts are set up in Grafana for real-time monitoring.
Dynamic Log Relabeling: Alloy ensures that logs from Kubernetes pods are correctly labeled and sent to Loki for analysis.
# Requirements
GoLang: To build and run the application.
Kubernetes Cluster: For deploying the monitoring stack.
Docker: Required for containerization.
Prometheus, Loki, and Tempo: For collecting logs, metrics, and traces.
Grafana: For visualizing the data.

# Setup
Clone this repository:

Deploy the monitoring stack:
Use Kubernetes manifests or Helm charts provided.

# Access Grafana for dashboards:

Set up the Grafana URL and default credentials as per your setup.
Usage
Grafana Dashboards: Pre-configured dashboards are available for visualizing logs, traces, and metrics.
Prometheus Alerts: Set up alerting rules for key metrics to get notifications for any critical issues.
Log Tracing: Use Grafana's log panel to view logs along with their corresponding traces from Tempo.
Contributing

Feel free to submit issues or pull requests if you want to contribute or find a bug.

