.class final Lcom/alipay/mobile/onsitepay/payer/confirm/e;
.super Ljava/lang/Object;
.source "C2BConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/e;->c:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/e;->c:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
