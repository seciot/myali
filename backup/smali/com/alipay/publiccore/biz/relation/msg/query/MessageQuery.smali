.class public Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;
.super Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public includeMsgType:[Ljava/lang/String;

.field public includeTotalCount:Z

.field public pageSize:Ljava/lang/Integer;

.field public publicId:Ljava/lang/String;

.field public startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->includeTotalCount:Z

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->pageSize:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->agreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeMsgType()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->includeMsgType:[Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeTotalCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->includeTotalCount:Z

    return v0
.end method

.method public setAgreementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->agreementId:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setIncludeMsgType([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->includeMsgType:[Ljava/lang/String;

    return-void
.end method

.method public setIncludeTotalCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->includeTotalCount:Z

    return-void
.end method

.method public setPageSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->pageSize:Ljava/lang/Integer;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->startTime:Ljava/lang/String;

    return-void
.end method
