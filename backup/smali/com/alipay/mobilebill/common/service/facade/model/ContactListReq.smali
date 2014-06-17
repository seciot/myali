.class public Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;
.super Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;


# instance fields
.field public apiVersion:I

.field public extendField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public filter:Ljava/lang/String;

.field public pageNum:I

.field public pageSize:I

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->pageNum:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->pageSize:I

    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->apiVersion:I

    return v0
.end method

.method public getExtendField()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->extendField:Ljava/util/Map;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->pageSize:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->startTime:J

    return-wide v0
.end method

.method public setApiVersion(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->apiVersion:I

    return-void
.end method

.method public setExtendField(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->extendField:Ljava/util/Map;

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->filter:Ljava/lang/String;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->pageNum:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->pageSize:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;->startTime:J

    return-void
.end method
