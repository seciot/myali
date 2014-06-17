.class public final Lcom/alipay/pushsdk/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/pushsdk/a/g;

.field private b:Lcom/alipay/pushsdk/a/f;

.field private c:Lcom/alipay/pushsdk/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/pushsdk/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/pushsdk/a/e;->a:Lcom/alipay/pushsdk/a/g;

    new-instance v0, Lcom/alipay/pushsdk/a/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a/f;-><init>(Lcom/alipay/pushsdk/a/e;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/e;->b:Lcom/alipay/pushsdk/a/f;

    invoke-static {p1}, Lcom/alipay/pushsdk/b/c;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/a/e;->c:Lcom/alipay/pushsdk/b/c;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/e;)Lcom/alipay/pushsdk/a/g;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/a/e;->a:Lcom/alipay/pushsdk/a/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/alipay/pushsdk/b/b;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/alipay/pushsdk/a/e;->b:Lcom/alipay/pushsdk/a/f;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/b/b;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/pushsdk/b/b;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/a/e;->c:Lcom/alipay/pushsdk/b/c;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/b/c;->a(Lcom/alipay/pushsdk/b/b;)V

    return-void
.end method
