.class public final Lcom/alipay/b/a/d;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/alipay/b/a/d;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Lcom/alipay/b/a/e;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/b/a/d;->a:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/b/a/d;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    return-void
.end method

.method public static a()Lcom/alipay/b/a/d;
    .locals 1

    sget-object v0, Lcom/alipay/b/a/d;->d:Lcom/alipay/b/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/a/d;

    invoke-direct {v0}, Lcom/alipay/b/a/d;-><init>()V

    sput-object v0, Lcom/alipay/b/a/d;->d:Lcom/alipay/b/a/d;

    :cond_0
    sget-object v0, Lcom/alipay/b/a/d;->d:Lcom/alipay/b/a/d;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/b/a/d;->a:I

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/b/a/e;-><init>(Lcom/alipay/b/a/d;)V

    iput-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    iget-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    invoke-virtual {v0}, Lcom/alipay/b/a/e;->start()V

    :cond_0
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/b/a/a;->onReceiveDataStarted()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/b/a/e;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/b/a/d;->c:Lcom/alipay/b/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/b/a/e;->a(Z)V

    :cond_0
    return-void
.end method
