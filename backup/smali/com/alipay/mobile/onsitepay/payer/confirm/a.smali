.class final Lcom/alipay/mobile/onsitepay/payer/confirm/a;
.super Ljava/lang/Object;
.source "BasicConfirmActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->b(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 224
    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->a(Ljava/lang/String;)V

    .line 219
    return-void
.end method
