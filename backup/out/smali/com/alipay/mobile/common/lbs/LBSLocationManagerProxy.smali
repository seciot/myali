.class public Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# static fields
.field private static a:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/List;

.field private d:Lcom/alipay/mobile/common/lbs/LBSLocation;

.field private e:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LBSLocationManagerProxy"

    sput-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    return-void
.end method

.method private static a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/lbs/LBSLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setAdCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Lcom/alipay/mobile/common/lbs/LBSLocationListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-direct {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :try_start_1
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-boolean v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocation;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Listener size"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    iget-object v2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;ZLcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Landroid/content/Context;ZLcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
