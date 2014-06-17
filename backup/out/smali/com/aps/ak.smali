.class final Lcom/aps/ak;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/aps/s;


# direct methods
.method constructor <init>(Lcom/aps/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/ak;->a:Lcom/aps/s;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/aps/ak;->a:Lcom/aps/s;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/s;->a(Lcom/aps/s;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/aps/ak;->a:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->c(Lcom/aps/s;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x4248

    iget-object v5, p0, Lcom/aps/ak;->a:Lcom/aps/s;

    invoke-static {v5}, Lcom/aps/s;->b(Lcom/aps/s;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
