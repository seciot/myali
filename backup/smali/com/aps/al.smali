.class final Lcom/aps/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:Lcom/aps/s;


# direct methods
.method constructor <init>(Lcom/aps/s;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 4

    if-eqz p0, :cond_0

    const-string/jumbo v0, "gps"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->d(Lcom/aps/s;)Lcom/aps/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/ap;->a()Z

    invoke-static {p1}, Lcom/aps/al;->a(Landroid/location/Location;)Z

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-virtual {v0}, Lcom/aps/s;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->d(Lcom/aps/s;)Lcom/aps/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/aps/al;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setTime(J)V

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aps/s;->a(Lcom/aps/s;J)J

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-static {v0, p1}, Lcom/aps/s;->a(Lcom/aps/s;Landroid/location/Location;)Landroid/location/Location;

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->e(Lcom/aps/s;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    invoke-static {v0, p1}, Lcom/aps/s;->b(Lcom/aps/s;Landroid/location/Location;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aps/al;->a:Lcom/aps/s;

    const-string/jumbo v1, "new location in indoor collect"

    invoke-static {v0, v1}, Lcom/aps/s;->a(Lcom/aps/s;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
