.class public Lcom/alipay/kabaoprod/core/model/model/PassInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public appInfo:Ljava/lang/String;

.field public auxiliaryFields:Ljava/lang/String;

.field public backFields:Ljava/lang/String;

.field public operations:Ljava/lang/String;

.field public passBaseInfo:Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

.field public passFrom:Ljava/lang/String;

.field public passName:Ljava/lang/String;

.field public primaryFields:Ljava/lang/String;

.field public remindSupport:Ljava/lang/String;

.field public secondaryFields:Ljava/lang/String;

.field public shareSuport:Ljava/lang/String;

.field public trendFlag:Ljava/lang/String;

.field public trendUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->remindSupport:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->shareSuport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAuxiliaryFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->auxiliaryFields:Ljava/lang/String;

    return-object v0
.end method

.method public getBackFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->backFields:Ljava/lang/String;

    return-object v0
.end method

.method public getOperations()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->operations:Ljava/lang/String;

    return-object v0
.end method

.method public getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->passBaseInfo:Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    return-object v0
.end method

.method public getPassFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->passFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->passName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->primaryFields:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindSupport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->remindSupport:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryFields()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->secondaryFields:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSuport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->shareSuport:Ljava/lang/String;

    return-object v0
.end method

.method public getTrendFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->trendFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getTrendUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->trendUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->appInfo:Ljava/lang/String;

    return-void
.end method

.method public setAuxiliaryFields(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->auxiliaryFields:Ljava/lang/String;

    return-void
.end method

.method public setBackFields(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->backFields:Ljava/lang/String;

    return-void
.end method

.method public setOperations(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->operations:Ljava/lang/String;

    return-void
.end method

.method public setPassBaseInfo(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->passBaseInfo:Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    return-void
.end method

.method public setPassFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->passFrom:Ljava/lang/String;

    return-void
.end method

.method public setPassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->passName:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryFields(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->primaryFields:Ljava/lang/String;

    return-void
.end method

.method public setRemindSupport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->remindSupport:Ljava/lang/String;

    return-void
.end method

.method public setSecondaryFields(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->secondaryFields:Ljava/lang/String;

    return-void
.end method

.method public setShareSuport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->shareSuport:Ljava/lang/String;

    return-void
.end method

.method public setTrendFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->trendFlag:Ljava/lang/String;

    return-void
.end method

.method public setTrendUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->trendUrl:Ljava/lang/String;

    return-void
.end method
