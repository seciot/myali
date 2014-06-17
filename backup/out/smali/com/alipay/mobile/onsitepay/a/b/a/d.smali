.class public final Lcom/alipay/mobile/onsitepay/a/b/a/d;
.super Ljava/lang/Object;
.source "OnsitePayPollingQueryServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/a/b/c;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/alipay/mobile/onsitepay/a/b/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/onsitepay/a/b/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->b:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->c:Z

    .line 32
    iput v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->d:I

    .line 33
    iput v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->e:I

    .line 34
    iput v2, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->f:I

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->g:Lcom/alipay/mobile/onsitepay/a/b/a;

    .line 43
    const-string/jumbo v0, "ONSITE_ANDROID_PAYEE_POLLINGQUERY_TOTALCOUNT"

    invoke-static {v0}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->f:I

    .line 50
    :goto_0
    const-string/jumbo v0, "ONSITE_ANDROID_PAYEE_POLLINGQUERY_TIMEOFFSET"

    invoke-static {v0}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->e:I

    .line 56
    :goto_1
    return-void

    .line 47
    :cond_0
    iput v2, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->f:I

    goto :goto_0

    .line 54
    :cond_1
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->e:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->d:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->e:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Lcom/alipay/mobile/onsitepay/a/b/a;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->g:Lcom/alipay/mobile/onsitepay/a/b/a;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I
    .locals 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->d:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->c:Z

    .line 139
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->c:Z

    .line 60
    iget v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->f:I

    iput v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->d:I

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-boolean v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->b:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/alipay/mobile/onsitepay/a/b/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/a/b/a/e;-><init>(Lcom/alipay/mobile/onsitepay/a/b/a/d;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 64
    iput-boolean v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->b:Z

    .line 67
    :cond_0
    return-void
.end method
