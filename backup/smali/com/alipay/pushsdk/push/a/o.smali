.class public final Lcom/alipay/pushsdk/push/a/o;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:J

.field private static l:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x2710

    sput v0, Lcom/alipay/pushsdk/push/a/o;->a:I

    const/16 v0, 0x1e

    sput v0, Lcom/alipay/pushsdk/push/a/o;->b:I

    const/16 v0, 0x3c

    sput v0, Lcom/alipay/pushsdk/push/a/o;->c:I

    const/16 v0, 0x12c

    sput v0, Lcom/alipay/pushsdk/push/a/o;->d:I

    const/16 v0, 0x708

    sput v0, Lcom/alipay/pushsdk/push/a/o;->e:I

    const/16 v0, 0x384

    sput v0, Lcom/alipay/pushsdk/push/a/o;->f:I

    sput-boolean v1, Lcom/alipay/pushsdk/push/a/o;->g:Z

    sput-boolean v2, Lcom/alipay/pushsdk/push/a/o;->h:Z

    sput-boolean v2, Lcom/alipay/pushsdk/push/a/o;->i:Z

    sput-boolean v1, Lcom/alipay/pushsdk/push/a/o;->j:Z

    sput-wide v3, Lcom/alipay/pushsdk/push/a/o;->k:J

    sput-wide v3, Lcom/alipay/pushsdk/push/a/o;->l:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1.1.0"

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    mul-int/lit16 v0, p0, 0x3e8

    sput v0, Lcom/alipay/pushsdk/push/a/o;->a:I

    return-void
.end method

.method public static a(J)V
    .locals 0

    sput-wide p0, Lcom/alipay/pushsdk/push/a/o;->k:J

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/pushsdk/push/a/o;->h:Z

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/alipay/pushsdk/push/a/o;->a:I

    if-gtz v0, :cond_0

    const/16 v0, 0x2710

    sput v0, Lcom/alipay/pushsdk/push/a/o;->a:I

    :cond_0
    sget v0, Lcom/alipay/pushsdk/push/a/o;->a:I

    return v0
.end method

.method public static b(I)V
    .locals 1

    mul-int/lit8 v0, p0, 0x3c

    sput v0, Lcom/alipay/pushsdk/push/a/o;->d:I

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/pushsdk/push/a/o;->i:Z

    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/alipay/pushsdk/push/a/o;->d:I

    return v0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcom/alipay/pushsdk/push/a/o;->b:I

    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/pushsdk/push/a/o;->j:Z

    return-void
.end method

.method public static d()J
    .locals 2

    sget-wide v0, Lcom/alipay/pushsdk/push/a/o;->k:J

    return-wide v0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/pushsdk/push/a/o;->g:Z

    return-void
.end method

.method public static e()J
    .locals 2

    sget v0, Lcom/alipay/pushsdk/push/a/o;->f:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static f()J
    .locals 2

    sget v0, Lcom/alipay/pushsdk/push/a/o;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/pushsdk/push/a/o;->h:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/pushsdk/push/a/o;->i:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/pushsdk/push/a/o;->j:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/pushsdk/push/a/o;->g:Z

    return v0
.end method

.method public static k()I
    .locals 1

    sget v0, Lcom/alipay/pushsdk/push/a/o;->c:I

    return v0
.end method

.method public static l()I
    .locals 1

    sget v0, Lcom/alipay/pushsdk/push/a/o;->b:I

    return v0
.end method
