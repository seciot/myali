.class public Lcom/alipay/mobile/framework/service/ext/logagent/AlipayLogAgentServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/logagent/AlipayLogAgentService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/logagent/AlipayLogAgentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public writeLog(Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;)V
    .locals 13

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getExtendParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [Ljava/lang/String;

    invoke-interface {v0, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/logagent/AlipayLogAgentServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getBehaviourIdEnum()Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getBehaviourStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getViewID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getRefViewID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getSeed()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getBehaviourPro()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getLogPro()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/logagent/AlipayLogAgentServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getBehaviourIdEnum()Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getBehaviourStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getViewID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getRefViewID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->getSeed()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
