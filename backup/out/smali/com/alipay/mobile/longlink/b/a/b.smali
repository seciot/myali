.class public final Lcom/alipay/mobile/longlink/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/longlink/b/d/c;

.field private b:Lcom/alipay/mobile/longlink/b/c/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/longlink/b/d/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/b;->a:Lcom/alipay/mobile/longlink/b/d/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/b;->b:Lcom/alipay/mobile/longlink/b/c/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/longlink/b/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/b;->b:Lcom/alipay/mobile/longlink/b/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/b;->b:Lcom/alipay/mobile/longlink/b/c/d;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/b/c/d;->a(Lcom/alipay/mobile/longlink/b/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/b;->a:Lcom/alipay/mobile/longlink/b/d/c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/longlink/b/d/c;->a(Lcom/alipay/mobile/longlink/b/c/a;)V

    :cond_1
    return-void
.end method
