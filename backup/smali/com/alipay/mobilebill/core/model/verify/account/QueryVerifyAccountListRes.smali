.class public Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;
.super Ljava/lang/Object;


# instance fields
.field public day:I

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public inContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public month:I

.field public outContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public realtimeEbill:Z

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public supportRealtimeEbill:Z

.field public totalConsumption:Ljava/lang/String;

.field public totalIncome:Ljava/lang/String;

.field public uniqueIdentify:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->realtimeEbill:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->extInfos:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->day:I

    return v0
.end method

.method public getExtInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->extInfos:Ljava/util/Map;

    return-object v0
.end method

.method public getInContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->inContents:Ljava/util/List;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->month:I

    return v0
.end method

.method public getOutContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->outContents:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalConsumption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->totalConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalIncome()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->totalIncome:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdentify()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->uniqueIdentify:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->year:I

    return v0
.end method

.method public isRealtimeEbill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->realtimeEbill:Z

    return v0
.end method

.method public isSupportRealtimeEbill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->supportRealtimeEbill:Z

    return v0
.end method

.method public setDay(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->day:I

    return-void
.end method

.method public setExtInfos(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->extInfos:Ljava/util/Map;

    return-void
.end method

.method public setInContents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->inContents:Ljava/util/List;

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->month:I

    return-void
.end method

.method public setOutContents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/core/model/verify/account/CategoryItemModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->outContents:Ljava/util/List;

    return-void
.end method

.method public setRealtimeEbill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->realtimeEbill:Z

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->resultCode:I

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->resultMsg:Ljava/lang/String;

    return-void
.end method

.method public setSupportRealtimeEbill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->supportRealtimeEbill:Z

    return-void
.end method

.method public setTotalConsumption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->totalConsumption:Ljava/lang/String;

    return-void
.end method

.method public setTotalIncome(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->totalIncome:Ljava/lang/String;

    return-void
.end method

.method public setUniqueIdentify(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->uniqueIdentify:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->userId:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/core/model/verify/account/QueryVerifyAccountListRes;->year:I

    return-void
.end method
