alias kt='kafka-topics.sh --bootstrap-server localhost:9092'
alias kt_delete='kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic'
alias kt_create='kafka-topics.sh --bootstrap-server localhost:9092 --create --partitions 3 --topic'
alias kt_list='kafka-topics.sh --bootstrap-server localhost:9092 --list'

alias kc='kafka-consumer-groups.sh --bootstrap-server localhost:9092'
alias kc_list='kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list'
alias kc_describe='kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group'
alias kc_delete='kafka-consumer-groups.sh --bootstrap-server localhost:9092 --delete --group'

alias kudu_listTables='kudu table list localhost'
alias kudu_deleteTable='kudu table delete localhost'
