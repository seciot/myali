.class final Lcom/alipay/mobile/onsitepay/payer/confirm/s;
.super Ljava/lang/Object;
.source "C2CConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/s;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/s;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/s;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->b(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;)V

    .line 146
    return-void
.end method
