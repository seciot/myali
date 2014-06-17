.class final Lcom/alipay/mobile/onsitepay/payer/confirm/b;
.super Ljava/lang/Object;
.source "C2BConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/b;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/b;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;)V

    .line 80
    return-void
.end method
