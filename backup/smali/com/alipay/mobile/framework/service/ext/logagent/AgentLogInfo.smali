.class public Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addExtendParam(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourIdEnum()Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->a:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    return-object v0
.end method

.method public getBehaviourPro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->l:Ljava/util/List;

    return-object v0
.end method

.method public getLogPro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getRefViewID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getViewID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setBehaviourIdEnum(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->a:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    return-void
.end method

.method public setBehaviourPro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setBehaviourStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setExtendParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->l:Ljava/util/List;

    return-void
.end method

.method public setLogPro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setRefViewID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setSeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setViewID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;->f:Ljava/lang/String;

    return-void
.end method
