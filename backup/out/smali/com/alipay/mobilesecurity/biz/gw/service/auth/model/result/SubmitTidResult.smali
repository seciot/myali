.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;
.super Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;


# instance fields
.field public authInfo:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

.field public permPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public validType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->permPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthInfo()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->authInfo:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    return-object v0
.end method

.method public getPermPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->permPoints:Ljava/util/List;

    return-object v0
.end method

.method public getValidType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->validType:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfo(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->authInfo:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    return-void
.end method

.method public setPermPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->permPoints:Ljava/util/List;

    return-void
.end method

.method public setValidType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->validType:Ljava/lang/String;

    return-void
.end method
