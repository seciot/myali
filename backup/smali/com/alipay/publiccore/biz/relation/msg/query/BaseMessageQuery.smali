.class public Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public apiVersion:Ljava/lang/String;

.field public channelPackage:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public terminal:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->channelPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->terminal:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->apiVersion:Ljava/lang/String;

    return-void
.end method

.method public setChannelPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->channelPackage:Ljava/lang/String;

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->clientVersion:Ljava/lang/String;

    return-void
.end method

.method public setTerminal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->terminal:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;->userId:Ljava/lang/String;

    return-void
.end method
