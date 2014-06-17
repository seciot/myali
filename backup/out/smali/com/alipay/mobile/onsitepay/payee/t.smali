.class final Lcom/alipay/mobile/onsitepay/payee/t;
.super Ljava/lang/Object;
.source "FacePayeeApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/s;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/s;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/t;->a:Lcom/alipay/mobile/onsitepay/payee/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/t;->a:Lcom/alipay/mobile/onsitepay/payee/s;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/s;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/t;->a:Lcom/alipay/mobile/onsitepay/payee/s;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/payee/s;->c:Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;

    const-class v2, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 68
    return-void
.end method
