.class final Lcom/alipay/mobile/onsitepay/payer/f;
.super Ljava/lang/Object;
.source "BasicFacePayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/e;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/f;->a:Lcom/alipay/mobile/onsitepay/payer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/f;->a:Lcom/alipay/mobile/onsitepay/payer/e;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/e;->c:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->f:Z

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/f;->a:Lcom/alipay/mobile/onsitepay/payer/e;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/e;->c:Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/BasicFacePayerActivity;->d()V

    .line 194
    return-void
.end method
