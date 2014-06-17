.class public Lcom/amap/api/location/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field static b:Z

.field static c:J

.field static d:Z

.field static e:Z

.field private static g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amap/api/location/f;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/amap/api/location/c;

.field private static j:Lcom/amap/api/location/b;

.field private static k:Lcom/amap/api/location/a;


# instance fields
.field private f:Landroid/content/Context;

.field private h:Lcom/amap/api/location/a$a;

.field private l:Lcom/amap/api/location/AMapLocation;

.field private m:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    const/16 v0, 0x64

    sput v0, Lcom/amap/api/location/a;->a:I

    sput-object v1, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    sput-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    sput-object v1, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/a;->b:Z

    sput-boolean v2, Lcom/amap/api/location/a;->d:Z

    sput-boolean v2, Lcom/amap/api/location/a;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    iput-object p1, p0, Lcom/amap/api/location/a;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    new-instance v0, Lcom/amap/api/location/a$a;

    invoke-direct {v0, p0}, Lcom/amap/api/location/a$a;-><init>(Lcom/amap/api/location/a;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    iget-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    invoke-static {p1, v0}, Lcom/amap/api/location/b;->a(Landroid/content/Context;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/b;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    iget-object v0, p0, Lcom/amap/api/location/a;->h:Lcom/amap/api/location/a$a;

    invoke-static {p1, p2, v0}, Lcom/amap/api/location/c;->a(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;)Lcom/amap/api/location/c;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/location/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/amap/api/location/a;
    .locals 1

    sget-object v0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/a;->l:Lcom/amap/api/location/AMapLocation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    goto :goto_0
.end method

.method a(DDFJLandroid/app/PendingIntent;)V
    .locals 2

    new-instance v0, Lcom/aps/h;

    invoke-direct {v0}, Lcom/aps/h;-><init>()V

    iput-wide p1, v0, Lcom/aps/h;->b:D

    iput-wide p3, v0, Lcom/aps/h;->a:D

    iput p5, v0, Lcom/aps/h;->c:F

    invoke-virtual {v0, p6, p7}, Lcom/aps/h;->a(J)V

    sget-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v1, v0, p8}, Lcom/amap/api/location/b;->a(Lcom/aps/h;Landroid/app/PendingIntent;)V

    return-void
.end method

.method a(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V
    .locals 6

    if-eqz p4, :cond_0

    new-instance v0, Lcom/amap/api/location/f;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/location/f;-><init>(JFLcom/amap/api/location/AMapLocationListener;Ljava/lang/String;)V

    sget-object v1, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "gps"

    if-ne p5, v0, :cond_2

    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/c;->a(JFLandroid/location/LocationListener;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "lbs"

    if-ne p5, v0, :cond_1

    sget-boolean v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/c;->a(JFLandroid/location/LocationListener;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/b;->a(J)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/location/a;->d:Z

    iget-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/b;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/f;

    iget-object v4, v0, Lcom/amap/api/location/f;->c:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()V

    sput-boolean v3, Lcom/amap/api/location/a;->b:Z

    sput-boolean v3, Lcom/amap/api/location/a;->d:Z

    iget-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method a(Z)V
    .locals 0

    sput-boolean p1, Lcom/amap/api/location/a;->e:Z

    return-void
.end method

.method b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    invoke-virtual {v0}, Lcom/amap/api/location/c;->a()V

    sput-object v1, Lcom/amap/api/location/a;->i:Lcom/amap/api/location/c;

    :cond_0
    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v0}, Lcom/amap/api/location/b;->a()V

    sput-object v1, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    :cond_1
    sget-object v0, Lcom/amap/api/location/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/location/a;->b:Z

    iput-object v1, p0, Lcom/amap/api/location/a;->m:Ljava/lang/Thread;

    sput-object v1, Lcom/amap/api/location/a;->k:Lcom/amap/api/location/a;

    return-void
.end method

.method c()I
    .locals 1

    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/location/a;->j:Lcom/amap/api/location/b;

    invoke-virtual {v0}, Lcom/amap/api/location/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
