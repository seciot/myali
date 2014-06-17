.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public authId:Ljava/lang/String;

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;->authId:Ljava/lang/String;

    return-void
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method
