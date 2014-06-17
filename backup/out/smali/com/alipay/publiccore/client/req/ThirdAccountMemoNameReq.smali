.class public Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public memoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->agreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->memoName:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->agreementId:Ljava/lang/String;

    return-void
.end method

.method public setMemoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->memoName:Ljava/lang/String;

    return-void
.end method
