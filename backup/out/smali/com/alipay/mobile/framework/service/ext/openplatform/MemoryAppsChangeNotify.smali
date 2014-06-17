.class public Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;
.super Ljava/lang/Object;
.source "MemoryAppsChangeNotify.java"


# static fields
.field public static final ACTION_MEMORY_APPS_CHANGE:I = 0x1


# instance fields
.field private action:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->action:I

    .line 15
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->action:I

    .line 16
    return-void
.end method
