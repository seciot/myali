.class public Lcom/alipay/publiccore/client/req/ApplyThirdAccountReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public publicId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/ApplyThirdAccountReq;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/req/ApplyThirdAccountReq;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/ApplyThirdAccountReq;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/req/ApplyThirdAccountReq;->userId:Ljava/lang/String;

    return-void
.end method
