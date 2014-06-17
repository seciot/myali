.class final Lcom/alipay/mobile/onsitepay/payer/confirm/u;
.super Ljava/lang/Object;
.source "C2CConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->d:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->b:Z

    iput-object p4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->d:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->b:Z

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/u;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V

    .line 174
    return-void
.end method
