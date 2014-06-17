.class public Lcom/alipay/publiccore/client/req/OfficialAccountListReq;
.super Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;


# instance fields
.field public fuzzyName:Ljava/lang/String;

.field private officialType:Ljava/lang/String;

.field private secondOfficialType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;-><init>()V

    return-void
.end method


# virtual methods
.method public getFuzzyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/OfficialAccountListReq;->fuzzyName:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/OfficialAccountListReq;->officialType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondOfficialType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/OfficialAccountListReq;->secondOfficialType:Ljava/lang/String;

    return-object v0
.end method

.method public setFuzzyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/OfficialAccountListReq;->fuzzyName:Ljava/lang/String;

    return-void
.end method

.method public setOfficialType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/OfficialAccountListReq;->officialType:Ljava/lang/String;

    return-void
.end method

.method public setSecondOfficialType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/OfficialAccountListReq;->secondOfficialType:Ljava/lang/String;

    return-void
.end method
