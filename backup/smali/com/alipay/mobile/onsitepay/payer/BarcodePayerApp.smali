.class public Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "BarcodePayerApp.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "BarcodePayerApp"

    sput-object v0, Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/BarcodePayerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
