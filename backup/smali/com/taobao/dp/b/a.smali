.class public Lcom/taobao/dp/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ynuf.alipay.com"

    sput-object v0, Lcom/taobao/dp/b/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://ynuf.alipay.com/m/um.htm"

    sput-object v0, Lcom/taobao/dp/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/dp/b/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/dp/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/dp/b/a;->d:Ljava/lang/String;

    return-void
.end method
