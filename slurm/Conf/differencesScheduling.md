## 🔑 Key Slurm Scheduling Options

| Option                            | Type         | Purpose / Behavior                                                                 |
|-----------------------------------|--------------|--------------------------------------------------------------------------------------|
| `SchedulerType=sched/backfill`    | Scheduler    | Enables backfilling for better utilization without blocking large jobs              |
| `SchedulerType=sched/builtin`     | Scheduler    | Simple FIFO; no fairshare or backfill (not recommended for multi-user systems)      |
| `PriorityType=priority/multifactor` | Priority     | Enables multifactor priority calculations                                           |
| `PriorityWeightFairshare`         | Weight       | How much fairshare influences priority (higher = more fairness enforcement)         |
| `PriorityWeightAge`               | Weight       | Gives older jobs higher priority                                                    |
| `PriorityWeightSize`              | Weight       | Prioritizes large jobs (e.g., >64 cores)                                            |
| `PriorityWeightPartition`         | Weight       | Set different priorities for partitions (e.g., test vs production)                  |
| `PriorityWeightQOS`               | Weight       | Priority boost based on QOS tier (e.g., urgent vs low)                              |
| `FairShare` (via accounts/QOS)    | Policy       | Balances long-term usage among users/groups                                        |
| `Backfill`                        | Scheduler feature | Runs low-priority jobs in gaps, if they don’t delay reserved high-priority jobs |
