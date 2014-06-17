.class public Lcom/alipay/mobile/longlink/service/j;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/longlink/service/LongLinkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/service/j;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/service/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x2

    sget-object v2, Lcom/alipay/mobile/longlink/service/j;->a:Ljava/lang/String;

    const-string/jumbo v3, "isNetworkAvailable networkInfos Unavailable."

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/longlink/service/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNetworkAvailable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/longlink/service/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive() getAction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/longlink/service/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->d()Lcom/alipay/mobile/longlink/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->d()Lcom/alipay/mobile/longlink/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->s()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->d()Lcom/alipay/mobile/longlink/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->d()Lcom/alipay/mobile/longlink/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->d()Lcom/alipay/mobile/longlink/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/j;->b:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->d()Lcom/alipay/mobile/longlink/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->b()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/longlink/service/j;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceive() no valid user."

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/mobile/longlink/service/j;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceive() Nothing to do."

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
