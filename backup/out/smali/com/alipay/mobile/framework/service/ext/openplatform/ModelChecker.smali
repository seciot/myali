.class public Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;
.super Ljava/lang/Object;
.source "ModelChecker.java"


# static fields
.field private static bannedModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAddShortCut()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static contains(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->getBannedModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method private static getBannedModelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->bannedModelList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->bannedModelList:Ljava/util/List;

    .line 19
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->bannedModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->bannedModelList:Ljava/util/List;

    const-string/jumbo v1, "vivo S11t"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->bannedModelList:Ljava/util/List;

    const-string/jumbo v1, "U701T"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/ModelChecker;->bannedModelList:Ljava/util/List;

    return-object v0
.end method
