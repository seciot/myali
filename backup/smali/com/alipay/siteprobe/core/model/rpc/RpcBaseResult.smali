.class public Lcom/alipay/siteprobe/core/model/rpc/RpcBaseResult;
.super Lcom/alipay/siteprobe/common/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultMsg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/siteprobe/common/util/ToString;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/siteprobe/core/model/rpc/RpcBaseResult;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/siteprobe/core/model/rpc/RpcBaseResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/siteprobe/core/model/rpc/RpcBaseResult;->resultMsg:Ljava/lang/String;

    return-void
.end method
