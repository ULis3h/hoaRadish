# hoaRadish 电控设计文档

## 整体架构
电控部分采用双主控方式进行控制，其原因在于`hoaRdish`的设计外部设备过多，单一主控的方案会导致性能下降以及接口资源不足。电控的整体架构如下图所示：
![](../../res/ec_topology.drawio.png)