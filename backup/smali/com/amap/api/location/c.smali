.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/amap/api/location/c;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/amap/api/location/a$a;

.field private d:Lcom/amap/api/location/core/b;

.field private e:Ljava/lang/String;

.field private f:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    new-instance v0, Lcom/amap/api/location/d;

    invoke-direct {v0, p0}, Lcom/amap/api/location/d;-><init>(Lcom/amap/api/location/c;)V

    iput-object v0, p0, Lcom/amap/api/location/c;->f:Landroid/location/LocationListener;

    iput-object p2, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/amap/api/location/c;->c:Lcom/amap/api/location/a$a;

    invoke-static {p1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/c;->d:Lcom/amap/api/location/core/b;

    iget-object v0, p0, Lcom/amap/api/location/c;->d:Lcom/amap/api/location/core/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/core/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/c;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/c;
    .locals 1

    sget-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/location/c;-><init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)V

    sput-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    :cond_0
    sget-object v0, Lcom/amap/api/location/c;->b:Lcom/amap/api/location/c;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/c;)Lcom/amap/api/location/core/b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->d:Lcom/amap/api/location/core/b;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/location/c;)Lcom/amap/api/location/a$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->c:Lcom/amap/api/location/a$a;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/c;->f:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method a(JFLandroid/location/LocationListener;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    iget-object v5, p0, Lcom/amap/api/location/c;->f:Landroid/location/LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
