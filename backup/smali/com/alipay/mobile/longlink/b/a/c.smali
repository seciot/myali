.class public final Lcom/alipay/mobile/longlink/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:Lcom/alipay/mobile/longlink/b/a/a/c;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lcom/alipay/mobile/longlink/b/a/d;

.field private f:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/longlink/b/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->d:Z

    sget-object v0, Lcom/alipay/mobile/longlink/b/a/d;->b:Lcom/alipay/mobile/longlink/b/a/d;

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->e:Lcom/alipay/mobile/longlink/b/a/d;

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/c;->b:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/longlink/b/a/c;->c:I

    iput-object p3, p0, Lcom/alipay/mobile/longlink/b/a/c;->a:Lcom/alipay/mobile/longlink/b/a/a/c;

    invoke-virtual {p3}, Lcom/alipay/mobile/longlink/b/a/a/c;->d()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->f:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/longlink/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/c;->e:Lcom/alipay/mobile/longlink/b/a/d;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->c:I

    return v0
.end method

.method public final c()Lcom/alipay/mobile/longlink/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->a:Lcom/alipay/mobile/longlink/b/a/a/c;

    return-object v0
.end method

.method public final d()Lcom/alipay/mobile/longlink/b/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->e:Lcom/alipay/mobile/longlink/b/a/d;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->d:Z

    return-void
.end method

.method public final f()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/c;->f:Ljavax/net/SocketFactory;

    return-object v0
.end method
