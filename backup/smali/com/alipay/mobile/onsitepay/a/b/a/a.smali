.class public final Lcom/alipay/mobile/onsitepay/a/b/a/a;
.super Ljava/lang/Object;
.source "OnsitePayLBSServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/a/b/b;


# instance fields
.field a:Lcom/alipay/mobile/onsitepay/a/b/a/c;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->a:Lcom/alipay/mobile/onsitepay/a/b/a/c;

    .line 25
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->b:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->b:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/alipay/mobile/onsitepay/a/b/a/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/onsitepay/a/b/a/c;-><init>(Lcom/alipay/mobile/onsitepay/a/b/a/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->a:Lcom/alipay/mobile/onsitepay/a/b/a/c;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->a:Lcom/alipay/mobile/onsitepay/a/b/a/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->requestLBSInfoUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V

    .line 37
    return-void
.end method
