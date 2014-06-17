.class final Lcom/alipay/mobile/onsitepay/payer/confirm/t;
.super Ljava/lang/Object;
.source "C2CConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/t;->c:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/t;->c:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/t;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/t;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method
