.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public authId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public permPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;

.field public validType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPermPoints()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->permPoints:Ljava/util/List;

    return-object v0
.end method

.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public getValidType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->validType:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->authId:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public setPermPoints(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->permPoints:Ljava/util/List;

    return-void
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method

.method public setValidType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;->validType:Ljava/lang/String;

    return-void
.end method
