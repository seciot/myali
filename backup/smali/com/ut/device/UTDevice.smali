.class public Lcom/ut/device/UTDevice;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDevice(Landroid/content/Context;)Lcom/ut/device/a;
    .locals 1

    invoke-static {p0}, Lcom/ut/device/b;->getDevice(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    return-object v0
.end method

.method public static getUtImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ut/device/b;->getDevice(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ut/device/a;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUtImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ut/device/b;->getDevice(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ut/device/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ut/device/b;->getDevice(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "-"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ut/device/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
