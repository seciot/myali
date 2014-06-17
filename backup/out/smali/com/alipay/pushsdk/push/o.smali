.class public Lcom/alipay/pushsdk/push/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/o;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    sget-object v0, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNotifyState() state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    new-instance v1, Lcom/alipay/pushsdk/a;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/a;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    const-string/jumbo v3, "setNotifyState() stopService!"

    invoke-static {v4, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/a;->a()V

    const-string/jumbo v1, "setting_notify_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "setting_notify_state"

    invoke-virtual {v0, v2, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "2"

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "setNotifyState() startService!"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v1

    const-string/jumbo v2, "setting_notify_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "setting_timectrl_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "setting_tracelog_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v1

    const-string/jumbo v2, "setting_timectrl_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final d()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v1

    const-string/jumbo v2, "setting_tracelog_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getTraceLogState="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v1, "setting_time_start"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "8"

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/o;->e()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/d;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/c/d;

    move-result-object v0

    const-string/jumbo v3, "setting_time_end"

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v0, "22"

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/pushsdk/c/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isNotificationTime() settingStart="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", settingEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", curHour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-ge v3, v0, :cond_2

    if-lt v3, v2, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/o;->c()Z

    move-result v0

    sget-object v2, Lcom/alipay/pushsdk/push/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNotificationTime() timeCtrl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
