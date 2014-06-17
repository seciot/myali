.class public Lcom/alipay/pushsdk/push/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/g;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lcom/alipay/pushsdk/c/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c/b;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v0

    :try_start_0
    iget-object v0, v0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/pushsdk/push/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "push use config data based on cfgId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Lcom/alipay/pushsdk/c/a/c;->b:I

    sget v1, Lcom/alipay/pushsdk/c/a/c;->d:I

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/alipay/pushsdk/c/a;->e()I

    move-result v0

    sget v1, Lcom/alipay/pushsdk/c/a/c;->e:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/pushsdk/c/a/c;->a:Z

    :cond_0
    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getConfigAddr push logLevel="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", configurable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/alipay/pushsdk/c/a/c;->a:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/alipay/pushsdk/c/a/c;->a:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/pushsdk/c/a;->d()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "host"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "port"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    sget-object v4, Lcom/alipay/pushsdk/push/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getConfigAddr pushAddr==> host="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/pushsdk/data/a;

    invoke-direct {v3}, Lcom/alipay/pushsdk/data/a;-><init>()V

    new-instance v4, Lcom/alipay/pushsdk/c/b;

    iget-object v5, p0, Lcom/alipay/pushsdk/push/g;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iput-object v0, v3, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/alipay/pushsdk/data/a;->c:I

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/alipay/pushsdk/data/a;->f:I

    :cond_3
    invoke-virtual {v4, v3}, Lcom/alipay/pushsdk/c/b;->a(Lcom/alipay/pushsdk/data/a;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string/jumbo v0, "mcometgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->d:Ljava/lang/String;

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/pushsdk/push/g;->e:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->g:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->h:Ljava/lang/String;

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->i:Ljava/lang/String;

    sget v0, Lcom/alipay/pushsdk/c/a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->f:Ljava/lang/String;

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "push dest==>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/push/g;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/data/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/a;-><init>()V

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/g;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/pushsdk/push/g;->e:I

    iput v1, v0, Lcom/alipay/pushsdk/data/a;->c:I

    iget-object v1, p0, Lcom/alipay/pushsdk/push/g;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/pushsdk/data/a;->f:I

    iget-object v1, p0, Lcom/alipay/pushsdk/push/g;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/g;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/g;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/pushsdk/data/a;->g:I

    new-instance v1, Lcom/alipay/pushsdk/c/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/g;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/c/b;->a(Lcom/alipay/pushsdk/data/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
