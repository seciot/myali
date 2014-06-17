.class public final Lcom/alipay/mobile/longlink/b/a/m;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1388

    sput v0, Lcom/alipay/mobile/longlink/b/a/m;->a:I

    const/16 v0, 0x1e

    sput v0, Lcom/alipay/mobile/longlink/b/a/m;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/longlink/b/a/m;->c:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1.0.0"

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

    sput v0, Lcom/alipay/mobile/longlink/b/a/m;->a:I

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/alipay/mobile/longlink/b/a/m;->a:I

    if-gtz v0, :cond_0

    const/16 v0, 0x2710

    sput v0, Lcom/alipay/mobile/longlink/b/a/m;->a:I

    :cond_0
    sget v0, Lcom/alipay/mobile/longlink/b/a/m;->a:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/alipay/mobile/longlink/b/a/m;->c:I

    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/alipay/mobile/longlink/b/a/m;->b:I

    return v0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcom/alipay/mobile/longlink/b/a/m;->b:I

    return-void
.end method
