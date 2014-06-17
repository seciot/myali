.class public Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;->uri:Ljava/lang/String;

    return-void
.end method
