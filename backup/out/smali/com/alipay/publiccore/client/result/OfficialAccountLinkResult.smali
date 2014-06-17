.class public Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field private errMsg:Ljava/lang/String;

.field private isSuccess:Z

.field private officialAccountId:Ljava/lang/String;

.field private resultLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->officialAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->resultLink:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->isSuccess:Z

    return v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->officialAccountId:Ljava/lang/String;

    return-void
.end method

.method public setResultLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->resultLink:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->isSuccess:Z

    return-void
.end method
