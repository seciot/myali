.class public final Lcom/alipay/mobile/pubsvc/app/msgnotify/common/NotifyResultEnum;
.super Ljava/lang/Object;
.source "NotifyResultEnum.java"


# static fields
.field public static final DELAYED_PROCESSING:I = 0x2

.field public static final PROCESSED:I = 0x0

.field public static final PROCESSING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isProcessing(I)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 35
    if-ne v0, p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
