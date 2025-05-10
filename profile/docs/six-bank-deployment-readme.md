# SIX Bank Deployment Architecture

## Cloud Infrastructure

Our deployment architecture leverages multi-region cloud infrastructure for high availability and disaster recovery.

<details>
<summary>Click to expand Deployment Architecture of SIX Bank</summary>

```mermaid
graph TD
    subgraph "SIX Bank Cloud Infrastructure"
        subgraph "Multi-Region Deployment"
            subgraph "Primary Region"
                PrimaryLB["Global Load Balancer"]

                subgraph "Production Environment"
                    subgraph "Kubernetes Cluster - Production"
                        subgraph "Service Mesh"
                            APIG["API Gateway"]

                            subgraph "Customer-Facing Services"
                                WebApp["Web Portal"]
                                MobileAPI["Mobile API"]
                                CustomerPortal["Customer Portal"]
                            end

                            subgraph "Core Banking Services"
                                Accounts["Account Service"]
                                Payments["Payment Service"]
                                Transactions["Transaction Service"]
                                Cards["Card Service"]
                                Auth["Auth Service"]
                                Notifications["Notification Service"]
                            end

                            subgraph "Batch Processing"
                                BatchJobs["Batch Jobs"]
                                ETL["ETL Processes"]
                            end
                        end
                    end

                    subgraph "Database Infrastructure - Production"
                        PostgreSQL["PostgreSQL Cluster"]
                        ReadReplicas["Read Replicas"]
                        MongoDB["MongoDB Cluster"]
                        Redis["Redis Cache"]
                        Kafka["Kafka Streams"]
                    end
                end

                CDN["Content Delivery Network"]
                WAF["Web Application Firewall"]

                subgraph "Monitoring & Observability"
                    Prometheus["Prometheus"]
                    Grafana["Grafana"]
                    ElasticStack["Elastic Stack"]
                    Jaeger["Distributed Tracing"]
                end
            end

            subgraph "Secondary Region"
                SecondaryLB["Standby Load Balancer"]

                subgraph "Disaster Recovery"
                    StandbyServices["Critical Service Standbys"]
                    DBReplicas["Database Replicas"]
                end
            end
        end

        subgraph "Lower Environments"
            subgraph "Staging Environment"
                StagingCluster["Kubernetes - Staging"]
                StagingDB["Databases - Staging"]
            end

            subgraph "QA Environment"
                QACluster["Kubernetes - QA"]
                QADB["Databases - QA"]
            end

            subgraph "Development Environment"
                DevCluster["Kubernetes - Dev"]
                DevDB["Databases - Dev"]
            end
        end

        subgraph "Security Infrastructure"
            IAM["Identity & Access Management"]
            SecretsManager["Secrets Manager"]
            KMS["Key Management Service"]
            SIEM["Security Monitoring"]
        end

        subgraph "CI/CD Pipeline"
            GitRepos["Git Repositories"]
            BuildSystem["Build System"]
            ArtifactRepo["Artifact Repository"]
            DeploymentAutomation["Deployment Automation"]
        end
    end

%% Connections between components
    PrimaryLB --> WAF
    WAF --> CDN
    WAF --> APIG
    CDN --> WebApp

    APIG --> CustomerFacingServices
    APIG --> CoreBankingServices

    WebApp --> APIG
    MobileAPI --> APIG
    CustomerPortal --> APIG

    Accounts --> PostgreSQL
    Accounts --> Redis
    Payments --> PostgreSQL
    Payments --> MongoDB
    Transactions --> PostgreSQL
    Transactions --> Kafka
    Cards --> PostgreSQL
    Auth --> PostgreSQL
    Auth --> Redis
    Notifications --> MongoDB
    Notifications --> Kafka

    PostgreSQL --> ReadReplicas
    PostgreSQL <--> DBReplicas
    MongoDB <--> DBReplicas

    BatchJobs --> PostgreSQL
    ETL --> PostgreSQL
    ETL --> MongoDB

%% Monitoring connections
    CoreBankingServices --> Prometheus
    CustomerFacingServices --> Prometheus
    DatabaseInfrastructure --> Prometheus
    Prometheus --> Grafana
    CoreBankingServices --> Jaeger
    CustomerFacingServices --> Jaeger
    APIG --> ElasticStack

%% CI/CD connections
    GitRepos --> BuildSystem
    BuildSystem --> ArtifactRepo
    ArtifactRepo --> DeploymentAutomation
    DeploymentAutomation --> ProductionEnvironment
    DeploymentAutomation --> StagingEnvironment
    DeploymentAutomation --> QAEnvironment
    DeploymentAutomation --> DevelopmentEnvironment

%% Security connections
    IAM --> KubernetesClusterProduction
    SecretsManager --> CoreBankingServices
    KMS --> DatabaseInfrastructureProduction

%% DR connections
    PrimaryLB <--> SecondaryLB
    CoreBankingServices --> StandbyServices

%% Environment progression
    DevelopmentEnvironment --> QAEnvironment
    QAEnvironment --> StagingEnvironment
    StagingEnvironment --> ProductionEnvironment
````

</details>    

### Key Components

1. **Global Load Balancer**: Routes traffic to the nearest healthy region
2. **Kubernetes Clusters**: Container orchestration for all services
3. **Database Infrastructure**: Replicated PostgreSQL clusters with read replicas

...