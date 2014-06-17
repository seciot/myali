.class final Lcom/aps/ad;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/aps/ac;


# direct methods
.method constructor <init>(Lcom/aps/ac;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, ""

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aps/ac;->a(Lcom/aps/ac;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/aps/ac;->a(Lcom/aps/ac;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    new-instance v2, Lcom/aps/af;

    iget-object v3, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-direct {v2, v3, v5}, Lcom/aps/af;-><init>(Lcom/aps/ac;B)V

    invoke-static {v1, v2}, Lcom/aps/ac;->a(Lcom/aps/ac;Lcom/aps/af;)Lcom/aps/af;

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    iget-object v2, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {v2}, Lcom/aps/ac;->a(Lcom/aps/ac;)Lcom/aps/af;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aps/ac;->a(Lcom/aps/ac;Landroid/telephony/PhoneStateListener;)V

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {v1}, Lcom/aps/ac;->b(Lcom/aps/ac;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/aps/ac;->a(Lcom/aps/ac;Z)Z

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    new-instance v2, Lcom/aps/ae;

    iget-object v3, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-direct {v2, v3, v0}, Lcom/aps/ae;-><init>(Lcom/aps/ac;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/aps/ac;->a(Lcom/aps/ac;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->b(Lcom/aps/ac;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    new-instance v1, Lcom/aps/ag;

    iget-object v2, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-direct {v1, v2, v5}, Lcom/aps/ag;-><init>(Lcom/aps/ac;B)V

    invoke-static {v0, v1}, Lcom/aps/ac;->a(Lcom/aps/ac;Lcom/aps/ag;)Lcom/aps/ag;

    iget-object v0, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {v1}, Lcom/aps/ac;->c(Lcom/aps/ac;)Lcom/aps/ag;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/high16 v4, 0x4000

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aps/ac;->a(Lcom/aps/ac;Landroid/location/GpsStatus$NmeaListener;JF)V

    iget-object v0, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    new-instance v1, Lcom/aps/ai;

    iget-object v2, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-direct {v1, v2, v5}, Lcom/aps/ai;-><init>(Lcom/aps/ac;B)V

    invoke-static {v0, v1}, Lcom/aps/ac;->a(Lcom/aps/ac;Lcom/aps/ai;)Lcom/aps/ai;

    iget-object v0, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    iget-object v1, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {v1}, Lcom/aps/ac;->d(Lcom/aps/ac;)Lcom/aps/ai;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/ac;->a(Lcom/aps/ac;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/aps/ad;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->e(Lcom/aps/ac;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
