.class public Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;
.super Lcom/alipay/siteprobe/core/model/rpc/RpcBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public failedMsg:Ljava/lang/String;

.field public gotoUrl:Ljava/lang/String;

.field public needUrl:Ljava/lang/String;

.field public otherAccessUrl:Ljava/lang/String;

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/siteprobe/core/model/rpc/RpcBaseResult;-><init>()V

    return-void
.end method
