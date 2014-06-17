.class public final Lcom/alipay/pushsdk/push/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/pushsdk/push/d/c;

.field private b:Lcom/alipay/pushsdk/push/a/e;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/d/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/d/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/a/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->b:Lcom/alipay/pushsdk/push/a/e;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/a/e;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/b;->a:Lcom/alipay/pushsdk/push/d/c;

    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/d/c;->a(Lcom/alipay/pushsdk/push/c/a;)V

    :cond_1
    return-void
.end method
