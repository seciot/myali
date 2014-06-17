.class public final Lcom/alipay/mobile/discoverywidget/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/discoverywidget/a/d;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/discoverywidget/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/a/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/alipay/mobile/discoverywidget/a/d;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/discoverywidget/a/d;->a:Lcom/alipay/mobile/discoverywidget/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/discoverywidget/a/d;

    invoke-direct {v0}, Lcom/alipay/mobile/discoverywidget/a/d;-><init>()V

    sput-object v0, Lcom/alipay/mobile/discoverywidget/a/d;->a:Lcom/alipay/mobile/discoverywidget/a/d;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/discoverywidget/a/d;->a:Lcom/alipay/mobile/discoverywidget/a/d;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/discoverywidget/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/a/d;->b:Ljava/util/HashMap;

    return-object v0
.end method
