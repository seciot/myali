.class public Lcom/androidquery/callback/AjaxStatus;
.super Ljava/lang/Object;


# static fields
.field public static final AUTH_ERROR:I = -0x66

.field public static final DATASTORE:I = 0x2

.field public static final DEVICE:I = 0x5

.field public static final FILE:I = 0x3

.field public static final MEMORY:I = 0x4

.field public static final NETWORK:I = 0x1

.field public static final NETWORK_ERROR:I = -0x65

.field public static final TRANSFORM_ERROR:I = -0x67


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Ljava/io/File;

.field private f:Ljava/util/Date;

.field private g:Z

.field private h:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private i:J

.field private j:I

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lorg/apache/http/protocol/HttpContext;

.field private q:[Lorg/apache/http/Header;

.field private r:Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->a:I

    const-string/jumbo v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->f:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->k:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->a:I

    const-string/jumbo v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->f:Ljava/util/Date;

    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->k:J

    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->a:I

    iput-object p2, p0, Lcom/androidquery/callback/AjaxStatus;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->r:Ljava/io/Closeable;

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->r:Ljava/io/Closeable;

    return-void
.end method

.method protected closeLater(Ljava/io/Closeable;)V
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->r:Ljava/io/Closeable;

    return-void
.end method

.method public code(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->a:I

    return-object p0
.end method

.method protected context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->p:Lorg/apache/http/protocol/HttpContext;

    return-object p0
.end method

.method protected data([B)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->d:[B

    return-object p0
.end method

.method public done()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->i:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->n:Z

    return-object p0
.end method

.method protected error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->o:Ljava/lang/String;

    return-object p0
.end method

.method public expired(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/androidquery/callback/AjaxStatus;->f:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->e:Ljava/io/File;

    return-object p0
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->h:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->a:I

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->p:Lorg/apache/http/protocol/HttpContext;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->p:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v1, "http.cookie-store"

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getData()[B
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->d:[B

    return-object v0
.end method

.method protected getDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->l:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->i:J

    return-wide v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->e:Ljava/io/File;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getInvalid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->m:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getReauth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->n:Z

    return v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->g:Z

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->j:I

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->f:Ljava/util/Date;

    return-object v0
.end method

.method protected headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->q:[Lorg/apache/http/Header;

    return-object p0
.end method

.method public invalidate()Lcom/androidquery/callback/AjaxStatus;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->m:Z

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->n:Z

    return-object p0
.end method

.method protected redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->c:Ljava/lang/String;

    return-object p0
.end method

.method protected refresh(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->g:Z

    return-object p0
.end method

.method protected reset()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->l:Z

    invoke-virtual {p0}, Lcom/androidquery/callback/AjaxStatus;->close()V

    return-object p0
.end method

.method protected source(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->j:I

    return-object p0
.end method

.method protected time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->f:Ljava/util/Date;

    return-object p0
.end method
