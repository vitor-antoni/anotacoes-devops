/*                              Documentação Amazon
https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html    */

/*
Amazon VPC flow logs:
@timestamp, @logStream, @message, accountId, endTime, interfaceId, logStatus, startTime, version, action, bytes, dstAddr, dstPort, packets, protocol, srcAddr, srcPort

Route53 Logs:
@timestamp, @logStream, @message, edgeLocation, ednsClientSubnet, hostZoneId, protocol, queryName, queryTimestamp, queryType, resolverIp, responseCode, version

Lambda logs:
@timestamp, @logStream, @message, @requestId, @duration, @billedDuration, @type, @maxMemoryUsed, @memorySize

Other logs:
@timestamp, @ingestionTime, @logStream, @message, @log
*/

/* Consultando um log de auditoria do RDS em que nome da tabela é carros */
fields @message
| filter @message like "carros" and @message not like "2001"
| limit 5
