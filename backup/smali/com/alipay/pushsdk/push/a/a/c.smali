.class public final Lcom/alipay/pushsdk/push/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/alipay/pushsdk/push/a/a/d;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/a/a/d;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/a/c;->c:Lcom/alipay/pushsdk/push/a/a/d;

    iput-object p2, p0, Lcom/alipay/pushsdk/push/a/a/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/pushsdk/push/a/a/c;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/pushsdk/push/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/a/c;->c:Lcom/alipay/pushsdk/push/a/a/d;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/a/a/c;->b:I

    return v0
.end method

.method public final d()Ljavax/net/SocketFactory;
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/a/c;->c:Lcom/alipay/pushsdk/push/a/a/d;

    sget-object v1, Lcom/alipay/pushsdk/push/a/a/d;->a:Lcom/alipay/pushsdk/push/a/a/d;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/alipay/pushsdk/push/a/a/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/a/a/a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/a/c;->c:Lcom/alipay/pushsdk/push/a/a/d;

    sget-object v1, Lcom/alipay/pushsdk/push/a/a/d;->c:Lcom/alipay/pushsdk/push/a/a/d;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/alipay/pushsdk/push/a/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/a/a/e;-><init>(Lcom/alipay/pushsdk/push/a/a/c;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
