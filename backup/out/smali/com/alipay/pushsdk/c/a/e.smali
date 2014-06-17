.class public Lcom/alipay/pushsdk/c/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/c/a/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/c/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/alipay/pushsdk/c/a/g;->a()Lcom/alipay/pushsdk/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c/a/g;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lcom/alipay/pushsdk/c/a/h;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/a/h;

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/pushsdk/c/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/c/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/alipay/pushsdk/c/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/pushsdk/c/a/g;->a()Lcom/alipay/pushsdk/c/a/g;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/pushsdk/c/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/alipay/pushsdk/c/a/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "writeLog start..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/c/a/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/pushsdk/c/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c/a/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
