.class public Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
.super Ljava/lang/Object;


# static fields
.field public static final GestureClassName:Ljava/lang/String; = "com.alipay.mobile.security.gesture.ui.GestureActivity_"

.field private static a:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;


# instance fields
.field public final USERLEAVEHINTMAXTIME:J

.field private b:Z

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->USERLEAVEHINTMAXTIME:J

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->f:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    .locals 2

    const-class v1, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLastUserLeavehint()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:J

    return-wide v0
.end method

.method public isChangeTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->f:Z

    return v0
.end method

.method public isHasGestureView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b:Z

    return v0
.end method

.method public isNeedAuthGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e:Z

    return v0
.end method

.method public isNeedNotifyCallBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:Z

    return v0
.end method

.method public isOverrangingLeavehintTime()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChangeTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->f:Z

    return-void
.end method

.method public setHasGestureView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b:Z

    return-void
.end method

.method public setLastUserLeavehint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:J

    return-void
.end method

.method public setNeedAuthGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e:Z

    return-void
.end method

.method public setNeedNotifyCallBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:Z

    return-void
.end method
