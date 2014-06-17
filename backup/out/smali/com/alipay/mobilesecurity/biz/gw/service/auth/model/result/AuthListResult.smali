.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;
.super Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;


# instance fields
.field public authModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;->authModels:Ljava/util/List;

    return-object v0
.end method

.method public setAuthModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;->authModels:Ljava/util/List;

    return-void
.end method
