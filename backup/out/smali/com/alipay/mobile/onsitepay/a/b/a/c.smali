.class final Lcom/alipay/mobile/onsitepay/a/b/a/c;
.super Ljava/lang/Object;
.source "OnsitePayLBSServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/a/b/a/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/onsitepay/a/b/a/a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->b:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->a:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    if-eqz p2, :cond_0

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->b:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->a:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/onsitepay/a/b/a/b;

    invoke-direct {v2, v0, v1, p1}, Lcom/alipay/mobile/onsitepay/a/b/a/b;-><init>(Lcom/alipay/mobile/onsitepay/a/b/a/a;Ljava/lang/String;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->b:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/c;->b:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/a/b/a/a;->a:Lcom/alipay/mobile/onsitepay/a/b/a/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->removeUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V

    .line 55
    :cond_0
    return-void
.end method
