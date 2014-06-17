.class public Lcom/aps/s;
.super Ljava/lang/Object;


# static fields
.field protected static a:Z

.field private static u:Ljava/lang/Object;

.field private static v:Lcom/aps/s;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:I

.field private e:I

.field private f:Lcom/aps/ac;

.field private g:Lcom/aps/aq;

.field private h:Lcom/aps/ax;

.field private i:Lcom/aps/z;

.field private j:Lcom/aps/aw;

.field private k:Lcom/aps/ap;

.field private l:Z

.field private m:Lcom/aps/v;

.field private n:Ljava/lang/Thread;

.field private o:Landroid/os/Looper;

.field private p:Lcom/aps/an;

.field private q:Z

.field private r:I

.field private s:Lcom/aps/ao;

.field private t:Z

.field private w:Landroid/location/LocationListener;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aps/s;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/aps/s;->u:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/aps/s;->d:I

    iput v1, p0, Lcom/aps/s;->e:I

    iput-boolean v1, p0, Lcom/aps/s;->l:Z

    iput-object v0, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    iput-object v0, p0, Lcom/aps/s;->p:Lcom/aps/an;

    iput-boolean v1, p0, Lcom/aps/s;->q:Z

    iput v1, p0, Lcom/aps/s;->r:I

    new-instance v0, Lcom/aps/ao;

    invoke-direct {v0, p0}, Lcom/aps/ao;-><init>(Lcom/aps/s;)V

    iput-object v0, p0, Lcom/aps/s;->s:Lcom/aps/ao;

    iput-boolean v1, p0, Lcom/aps/s;->t:Z

    new-instance v0, Lcom/aps/al;

    invoke-direct {v0, p0}, Lcom/aps/al;-><init>(Lcom/aps/s;)V

    iput-object v0, p0, Lcom/aps/s;->w:Landroid/location/LocationListener;

    new-instance v0, Lcom/aps/am;

    invoke-direct {v0, p0}, Lcom/aps/am;-><init>(Lcom/aps/s;)V

    iput-object v0, p0, Lcom/aps/s;->x:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/aps/s;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/aps/ac;->a(Landroid/content/Context;)Lcom/aps/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    new-instance v0, Lcom/aps/v;

    invoke-direct {v0}, Lcom/aps/v;-><init>()V

    iput-object v0, p0, Lcom/aps/s;->m:Lcom/aps/v;

    new-instance v0, Lcom/aps/aq;

    iget-object v2, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    invoke-direct {v0, v2}, Lcom/aps/aq;-><init>(Lcom/aps/ac;)V

    iput-object v0, p0, Lcom/aps/s;->g:Lcom/aps/aq;

    new-instance v0, Lcom/aps/z;

    invoke-direct {v0, p1}, Lcom/aps/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aps/s;->i:Lcom/aps/z;

    new-instance v0, Lcom/aps/ax;

    iget-object v2, p0, Lcom/aps/s;->i:Lcom/aps/z;

    invoke-direct {v0, v2}, Lcom/aps/ax;-><init>(Lcom/aps/z;)V

    iput-object v0, p0, Lcom/aps/s;->h:Lcom/aps/ax;

    new-instance v0, Lcom/aps/aw;

    iget-object v2, p0, Lcom/aps/s;->i:Lcom/aps/z;

    invoke-direct {v0, v2}, Lcom/aps/aw;-><init>(Lcom/aps/z;)V

    iput-object v0, p0, Lcom/aps/s;->j:Lcom/aps/aw;

    iget-object v0, p0, Lcom/aps/s;->b:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/aps/s;->c:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/aps/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/ap;->a(Landroid/content/Context;)Lcom/aps/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    iget-object v2, p0, Lcom/aps/s;->s:Lcom/aps/ao;

    invoke-virtual {v0, v2}, Lcom/aps/ap;->a(Lcom/aps/ao;)V

    invoke-direct {p0}, Lcom/aps/s;->f()V

    iget-object v0, p0, Lcom/aps/s;->c:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aps/s;->t:Z

    invoke-static {p1}, Lcom/aps/p;->a(Landroid/content/Context;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/s;J)J
    .locals 0

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/s;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    return-object p1
.end method

.method static synthetic a(Lcom/aps/s;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/aps/s;
    .locals 2

    sget-object v0, Lcom/aps/s;->v:Lcom/aps/s;

    if-nez v0, :cond_1

    sget-object v1, Lcom/aps/s;->u:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/s;->v:Lcom/aps/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/s;

    invoke-direct {v0, p0}, Lcom/aps/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/aps/s;->v:Lcom/aps/s;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/aps/s;->v:Lcom/aps/s;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/aps/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/s;->f()V

    return-void
.end method

.method static synthetic a(Lcom/aps/s;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "collector"

    invoke-static {v0, p1}, Lcom/aps/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/aps/s;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/aps/s;->w:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic b(Lcom/aps/s;Landroid/location/Location;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aps/s;->g:Lcom/aps/aq;

    invoke-virtual {v0, p1}, Lcom/aps/aq;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aps/s;->g:Lcom/aps/aq;

    iget-object v1, v1, Lcom/aps/aq;->b:Lcom/aps/ar;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, v1, Lcom/aps/ar;->b:Landroid/location/Location;

    :cond_0
    iget-object v1, p0, Lcom/aps/s;->g:Lcom/aps/aq;

    invoke-virtual {v1, p1}, Lcom/aps/aq;->b(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/aps/s;->g:Lcom/aps/aq;

    iget-object v3, v3, Lcom/aps/aq;->a:Lcom/aps/au;

    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v4, v3, Lcom/aps/au;->b:Landroid/location/Location;

    :cond_1
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/aps/s;->m:Lcom/aps/v;

    iget-object v1, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    invoke-static {p1, v1, v0}, Lcom/aps/v;->a(Landroid/location/Location;Lcom/aps/ac;I)Lcom/aps/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    invoke-virtual {v0}, Lcom/aps/ac;->m()Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_3
    invoke-virtual {v1}, Lcom/aps/u;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/aps/s;->h:Lcom/aps/ax;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/aps/ax;->a(J[B)V

    :cond_4
    return-void

    :cond_5
    if-eqz v1, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/aps/s;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/s;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic d(Lcom/aps/s;)Lcom/aps/ap;
    .locals 1

    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/aps/s;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/aps/s;)Lcom/aps/ax;
    .locals 1

    iget-object v0, p0, Lcom/aps/s;->h:Lcom/aps/ax;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v0}, Lcom/aps/ap;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/aps/s;->d:I

    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v0}, Lcom/aps/ap;->c()I

    move-result v0

    iput v0, p0, Lcom/aps/s;->e:I

    iget-object v0, p0, Lcom/aps/s;->g:Lcom/aps/aq;

    iget v0, p0, Lcom/aps/s;->d:I

    iget v1, p0, Lcom/aps/s;->e:I

    invoke-static {v0, v1}, Lcom/aps/aq;->a(II)V

    return-void
.end method

.method static synthetic g(Lcom/aps/s;)Lcom/aps/aw;
    .locals 1

    iget-object v0, p0, Lcom/aps/s;->j:Lcom/aps/aw;

    return-object v0
.end method

.method static synthetic h(Lcom/aps/s;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/aps/s;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "collector"

    const-string/jumbo v1, "no gps or passive, so not to collect!"

    invoke-static {v0, v1}, Lcom/aps/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/aps/s;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aps/s;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/aps/s;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/aps/s;->c:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/aps/s;->w:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    :cond_3
    iget-object v1, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    :cond_4
    new-instance v1, Lcom/aps/ak;

    invoke-direct {v1, p0, v0}, Lcom/aps/ak;-><init>(Lcom/aps/s;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    invoke-virtual {v0, v3}, Lcom/aps/ac;->a(Lcom/aps/ah;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aps/s;->a:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2220

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/aps/s;->i:Lcom/aps/z;

    invoke-virtual {v0, p1}, Lcom/aps/z;->a(I)V

    return-void
.end method

.method public a(Lcom/aps/y;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v0, p2}, Lcom/aps/ap;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/aps/y;->a()[B

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/aps/s;->b:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    iget-object v3, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v3}, Lcom/aps/ap;->e()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/aps/ap;->a(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/aps/y;->a(Z)V

    iget-object v0, p0, Lcom/aps/s;->j:Lcom/aps/aw;

    invoke-virtual {v0, p1}, Lcom/aps/aw;->a(Lcom/aps/y;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    iget-object v3, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v3}, Lcom/aps/ap;->f()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/aps/ap;->b(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/aps/s;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/aps/s;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/s;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/s;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/aps/s;->o:Landroid/os/Looper;

    :cond_2
    iget-object v0, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/aps/s;->n:Ljava/lang/Thread;

    :cond_3
    iget-object v0, p0, Lcom/aps/s;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/aps/s;->w:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/aps/s;->f:Lcom/aps/ac;

    invoke-virtual {v0}, Lcom/aps/ac;->a()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/aps/s;->a:Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/aps/s;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/aps/s;->b()V

    goto :goto_0
.end method

.method public d()Lcom/aps/y;
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/aps/s;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v1}, Lcom/aps/ap;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aps/s;->j:Lcom/aps/aw;

    iget-object v1, p0, Lcom/aps/s;->k:Lcom/aps/ap;

    invoke-virtual {v1}, Lcom/aps/ap;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aps/aw;->a(I)Lcom/aps/y;

    move-result-object v0

    goto :goto_0
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
