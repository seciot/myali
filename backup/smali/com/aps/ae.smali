.class final Lcom/aps/ae;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/aps/ac;


# direct methods
.method public constructor <init>(Lcom/aps/ac;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/ae;->a:Lcom/aps/ac;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/aps/ae;->a:Lcom/aps/ac;

    invoke-static {v0}, Lcom/aps/ac;->l(Lcom/aps/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void
.end method
