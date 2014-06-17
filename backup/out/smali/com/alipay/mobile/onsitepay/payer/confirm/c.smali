.class final Lcom/alipay/mobile/onsitepay/payer/confirm/c;
.super Ljava/lang/Object;
.source "C2BConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->d:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->b:Z

    iput-object p4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->d:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->b:Z

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    return-void
.end method
