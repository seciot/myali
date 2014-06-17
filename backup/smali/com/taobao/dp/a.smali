.class public final Lcom/taobao/dp/a;
.super Lcom/taobao/dp/b/a;


# static fields
.field private static e:Lcom/taobao/dp/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/dp/b/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/dp/a;
    .locals 1

    sget-object v0, Lcom/taobao/dp/a;->e:Lcom/taobao/dp/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/dp/a;

    invoke-direct {v0, p0}, Lcom/taobao/dp/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/dp/a;->e:Lcom/taobao/dp/a;

    :cond_0
    sget-object v0, Lcom/taobao/dp/a;->e:Lcom/taobao/dp/a;

    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/dp/c/a;->a:Z

    const-string/jumbo v0, "umidprod.stable.alibaba-inc.com"

    sput-object v0, Lcom/taobao/dp/b/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://umidprod.stable.alibaba-inc.com/m/um.htm"

    sput-object v0, Lcom/taobao/dp/b/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lcom/taobao/dp/b/a;->a()V

    return-void
.end method
