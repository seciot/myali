.class public final Lcom/alipay/pushsdk/push/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:Lcom/alipay/pushsdk/push/a/a/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljavax/net/SocketFactory;

.field private u:Z

.field private v:Lcom/alipay/pushsdk/push/a/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/alipay/pushsdk/push/a/a/c;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->k:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->l:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->m:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->n:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->o:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->p:Z

    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/a/c;->q:Z

    sget-boolean v0, Lcom/alipay/pushsdk/push/a/a;->a:Z

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->r:Z

    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/a/c;->s:Z

    iput-boolean v1, p0, Lcom/alipay/pushsdk/push/a/c;->u:Z

    sget-object v0, Lcom/alipay/pushsdk/push/a/d;->b:Lcom/alipay/pushsdk/push/a/d;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->v:Lcom/alipay/pushsdk/push/a/d;

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/c;->c:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/pushsdk/push/a/c;->d:I

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/pushsdk/push/a/c;->a:Lcom/alipay/pushsdk/push/a/a/c;

    const-string/jumbo v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "cacerts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->e:Ljava/lang/String;

    const-string/jumbo v0, "jks"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->f:Ljava/lang/String;

    const-string/jumbo v0, "changeit"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->g:Ljava/lang/String;

    const-string/jumbo v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->h:Ljava/lang/String;

    const-string/jumbo v0, "jks"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->i:Ljava/lang/String;

    const-string/jumbo v0, "pkcs11.config"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->j:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alipay/pushsdk/push/a/a/c;->d()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->t:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/push/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/c;->v:Lcom/alipay/pushsdk/push/a/d;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/pushsdk/push/a/c;->d:I

    return v0
.end method

.method public final c()Lcom/alipay/pushsdk/push/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->a:Lcom/alipay/pushsdk/push/a/a/c;

    return-object v0
.end method

.method public final d()Lcom/alipay/pushsdk/push/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->v:Lcom/alipay/pushsdk/push/a/d;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->p:Z

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/a/c;->q:Z

    return-void
.end method

.method public final g()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/c;->t:Ljavax/net/SocketFactory;

    return-object v0
.end method
